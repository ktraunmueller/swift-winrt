// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1

import TestComponent_CWinRT

private var IID___x_ABI_Ctest__component_CISimple: IID {
    IID(Data1: 0x99F69C9D, Data2: 0xC141, Data3: 0x5A50, Data4: ( 0x9B,0x1F,0xAD,0x38,0xDA,0x38,0x44,0xC6 ))// 99F69C9D-C141-5A50-9B1F-AD38DA3844C6
}

open class ISimple: IInspectable {
    override public class var IID: IID { IID___x_ABI_Ctest__component_CISimple }

    public func Method() throws {
        _ = try perform(as: __x_ABI_Ctest__component_CISimple.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Method(pThis))
        }
    }
    public func ReturnBlittableStruct() throws -> __x_ABI_Ctest__component_CBlittableStruct {
        var result: __x_ABI_Ctest__component_CBlittableStruct = .init()
        _ = try perform(as: __x_ABI_Ctest__component_CISimple.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.ReturnBlittableStruct(pThis, &result))
        }
        return result
    }
    public func TakeBlittableStruct(_ value: __x_ABI_Ctest__component_CBlittableStruct) throws {
        _ = try perform(as: __x_ABI_Ctest__component_CISimple.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.TakeBlittableStruct(pThis, value))
        }
    }
    public func get_BlittableStructProperty() throws -> __x_ABI_Ctest__component_CBlittableStruct {
        var value: __x_ABI_Ctest__component_CBlittableStruct = .init()
        _ = try perform(as: __x_ABI_Ctest__component_CISimple.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_BlittableStructProperty(pThis, &value))
        }
        return value
    }
    public func put_BlittableStructProperty(_ value: __x_ABI_Ctest__component_CBlittableStruct) throws {
        _ = try perform(as: __x_ABI_Ctest__component_CISimple.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_BlittableStructProperty(pThis, value))
        }
    }
}

