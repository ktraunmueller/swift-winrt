#include "../pch.h"
#include "../types.h"
#include "../type_writers.h"

#include "type_writers.h"

using namespace swiftwinrt;

// Writes the Swift code representation of a WinRT type at the Swift projection layer
// as a 'type' syntax node.
static void write_swift_type(writer& w, metadata_type const& type)
{
    // Handle types with special codegen
    if (auto gen_inst = dynamic_cast<const generic_inst*>(&type))
    {
        auto&& generic_typedef = *gen_inst->generic_type();
        auto&& generic_params = gen_inst->generic_params();
        if (is_ireference(generic_typedef))
        {
            auto boxed_type = generic_params[0];
            w.write("%?", bind<write_swift_type>(*boxed_type));
            return;
        }

        if (is_eventhandler(generic_typedef))
        {
            auto args_type = generic_params[0];
            // '^' escapes the '@'
            w.write("^@escaping (%.IInspectable, %) -> ()",
                w.support, bind<write_swift_type>(*args_type));
            return;
        }

        if (is_typedeventhandler(generic_typedef))
        {
            auto sender_type = generic_params[0];
            auto args_type = generic_params[1];
            // '^' escapes the '@'
            w.write("^@escaping (%, %) -> ()",
                bind<write_swift_type>(*sender_type),
                bind<write_swift_type>(*args_type));
            return;
        }
    }

    if (is_interface(&type))
    {
        w.write("(any %)?", bind<write_swift_type_identifier>(type));
    }
    else if (is_reference_type(&type))
    {
        w.write("%?", bind<write_swift_type_identifier>(type));
    }
    else
    {
        write_swift_type_identifier(w, type);
    }
}

void swiftwinrt::write_swift_type_identifier(writer& w, metadata_type const& type)
{
    if (auto elem_type = dynamic_cast<const element_type*>(&type))
    {
        if (elem_type->type() == ElementType::Object)
        {
            w.write("%.IInspectable", w.support);
        }
        else
        {
            // Primitive numeric types and String
            w.write_swift(elem_type->type());
        }
    }
    else if (auto mapped = dynamic_cast<const mapped_type*>(&type))
    {
        // mapped types are defined in headers and *not* metadata files, so these don't follow the same
        // naming conventions that other types do. We just grab the type name and will use that.
        auto swift_name = mapped->swift_type_name();
        w.write(swift_name == "HResult" ? "HRESULT" : swift_name);
    }
    else if (auto systype = dynamic_cast<const system_type*>(&type))
    {
        w.write(systype->swift_type_name());
    }
    else if (auto type_def = dynamic_cast<const typedef_base*>(&type))
    {
        // Make sure the module gets imported
        w.add_depends(type);

        // Module 
        if (type_def->is_generic())
        {
            // Generic instances are always in the support module
            if (w.full_type_names || (get_swift_module(w.type_namespace) != w.support))
            {
                w.write("%.", w.support);
            }
        }
        else if (w.full_type_names || type.swift_logical_namespace() != w.type_namespace)
        {
            w.write("%.", get_swift_module(type.swift_logical_namespace()));
        }

        w.write(remove_backtick(type.swift_type_name()));
    }
    else if (auto gen_inst = dynamic_cast<const generic_inst*>(&type))
    {
        auto&& generic_typedef = *gen_inst->generic_type();

        // Special generic types
        if (is_ireference(generic_typedef)
            || is_eventhandler(generic_typedef)
            || is_typedeventhandler(generic_typedef))
        {
            throw std::exception("Special types IReference, EventHandler and TypedEventHandler"
                " cannot be represented as a Swift type-identifier syntax node.");
        }

        write_swift_type_identifier(w, generic_typedef);

        w.write("<");
        separator sep{ w };
        for (auto&& gen_arg : gen_inst->generic_params())
        {
            sep();
            write_swift_type(w, *gen_arg);
        }
        w.write(">");
    }
    else
    {
        throw std::exception("Unexpected metadata_type");
    }
}
// Writes the Swift code representation of a WinRT type at the C ABI projection layer
// as a 'type' syntax node.
static void write_c_abi_type(writer& w, metadata_type const& type)
{
    if (auto elem_type = dynamic_cast<const element_type*>(&type))
    {
        if (elem_type->type() == ElementType::Object)
        {
            w.write("UnsafeMutablePointer<%.IInspectable>?", w.c_mod);
        }
        else if (elem_type->type() == ElementType::String)
        {
            // Projecting as optional makes it easier to interop
            // with UnsafePointers
            w.write("HSTRING?");
        }
        else
        {
            // Primitive numeric types
            auto abi_guard = w.push_abi_types(true);
            w.write_abi(elem_type->type());
        }
    }
    else if (auto mapped = dynamic_cast<const mapped_type*>(&type))
    {
        w.write(mapped->cpp_abi_name());
    }
    else if (auto systype = dynamic_cast<const system_type*>(&type))
    {
        w.write(systype->cpp_abi_name());
    }
    else
    {
        auto type_def = dynamic_cast<const typedef_base*>(&type);
        const generic_inst* geninst = nullptr;
        if (type_def == nullptr)
        {
            geninst = dynamic_cast<const generic_inst*>(&type);
            if (geninst == nullptr)
            {
                throw std::exception("Unexpected metadata_type");
            }

            type_def = geninst->generic_type();
        }
        else
        {
            if (type_def->is_generic())
            {
                throw std::exception("Cannot write a type expression of a generic type definition.");
            }
        }

        auto abi_guard = w.push_abi_types(true);
        auto mangling_guard = w.push_mangled_names_if_needed(get_category(&type));

        std::optional<writer::generic_param_guard> generic_params_guard;
        if (geninst)
        {
            generic_params_guard = w.push_generic_params(*geninst);
        }

        if (is_reference_type(&type))
        {
            w.write("UnsafeMutablePointer<%>?", type);
        }
        else
        {
            w.write(type);
        }
    }
}

void swiftwinrt::write_type(writer& w, metadata_type const& type, projection_layer layer)
{
    if (layer == projection_layer::swift)
    {
        write_swift_type(w, type);
    }
    else
    {
        write_c_abi_type(w, type);
    }
}

void swiftwinrt::write_default_init_assignment(writer& w, metadata_type const& sig, projection_layer layer)
{
    auto category = get_category(&sig);

    if (category == param_category::object_type || category == param_category::generic_type)
    {
        // Projected to Optional and default-initialized to nil
    }
    else if (category == param_category::string_type)
    {
        // abi representation is HRESULT? which defaults to nil
        // swift representation is String, which must be initialized to ""
        if (layer == projection_layer::swift) w.write(" = \"\"");
    }
    else if (category == param_category::struct_type || is_guid(category))
    {
        w.write(" = .init()");
    }
    else if (category == param_category::enum_type)
    {
        w.write(" = .init(0)");
    }
    else if (is_boolean(&sig))
    {
        w.write(" = %", layer == projection_layer::c_abi ? "0" : "false");
    }
    else
    {
        w.write(" = %", is_floating_point(&sig) ? "0.0" : "0");
    }
}