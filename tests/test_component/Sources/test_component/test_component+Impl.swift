// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
import Ctest_component

public enum __IMPL_test_component {
    public class IBasicImpl : IBasic, AbiInterfaceImpl {
        public typealias CABI = __x_ABI_Ctest__component_CIBasic
        public typealias SwiftABI = __ABI_test_component.IBasic
        public typealias SwiftProjection = AnyIBasic
        private (set) public var _default: SwiftABI
        public static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IBasicImpl(abi)
        }
        public init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.IBasicVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
        public func method() throws {
            try _default.MethodImpl()
        }

    }

    public class IIAmImplementableImpl : IIAmImplementable, AbiInterfaceImpl {
        public typealias CABI = __x_ABI_Ctest__component_CIIAmImplementable
        public typealias SwiftABI = __ABI_test_component.IIAmImplementable
        public typealias SwiftProjection = AnyIIAmImplementable
        private (set) public var _default: SwiftABI
        public static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IIAmImplementableImpl(abi)
        }
        public init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.IIAmImplementableVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
        public func inInt32(_ value: Int32) throws -> String {
            let result = try _default.InInt32Impl(value)
            return .init(from: result)
        }

        public func inString(_ value: String) throws -> String {
            let _value = try! HString(value)
            let result = try _default.InStringImpl(_value.get())
            return .init(from: result)
        }

        public func inEnum(_ value: Signed) throws -> String {
            let result = try _default.InEnumImpl(value)
            return .init(from: result)
        }

        public func outInt32(_ value: inout Int32) throws {
            try _default.OutInt32Impl(&value)
        }

        public func outString(_ value: inout String) throws {
            var _value: HSTRING?
            try _default.OutStringImpl(&_value)
            value = .init(from: _value)
            WindowsDeleteString(_value)
        }

        public func outBlittableStruct(_ value: inout BlittableStruct) throws {
            var _value: __x_ABI_Ctest__component_CBlittableStruct = .init()
            try _default.OutBlittableStructImpl(&_value)
            value = .from(abi: _value)
        }

        public func outNonBlittableStruct(_ value: inout NonBlittableStruct) throws {
            let _value: __ABI_test_component._ABI_NonBlittableStruct = .init()
            try _default.OutNonBlittableStructImpl(&_value.val)
            value = .from(abi: _value.val)
        }

        public func outEnum(_ value: inout Signed) throws {
            try _default.OutEnumImpl(&value)
        }

        public func returnEnum() throws -> Signed {
            let result = try _default.ReturnEnumImpl()
            return result
        }

        public func fireEvent() throws {
            try _default.FireEventImpl()
        }

        public var enumProperty : Fruit {
            get {
                let value = try! _default.get_EnumPropertyImpl()
                return value
            }

            set {
                try! _default.put_EnumPropertyImpl(newValue)
            }
        }

        public var id : UUID? {
            get {
                let value = try! _default.get_IdImpl()
                return .init(ref: value)
            }

            set {
                let wrapper = __ABI_test_component.__x_ABI_C__FIReference_1_GUIDWrapper(newValue)
                let _newValue = try! wrapper?.toABI { $0 }
                try! _default.put_IdImpl(_newValue)
            }
        }

    }

    public class ISimpleDelegateImpl : ISimpleDelegate, AbiInterfaceImpl {
        public typealias CABI = __x_ABI_Ctest__component_CISimpleDelegate
        public typealias SwiftABI = __ABI_test_component.ISimpleDelegate
        public typealias SwiftProjection = AnyISimpleDelegate
        private (set) public var _default: SwiftABI
        public static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ISimpleDelegateImpl(abi)
        }
        public init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.ISimpleDelegateVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
        public func doThis() throws {
            try _default.DoThisImpl()
        }

        public func doThat(_ val: Int32) throws {
            try _default.DoThatImpl(val)
        }

    }

    public class VoidToVoidDelegateImpl : WinRTDelegate {
        public typealias Data = ()
        public typealias Return = ()
        public var token: EventRegistrationToken?
        public var handler: (Data) -> Return
        public required init(handler: @escaping (Data) -> Return){
            self.handler = handler
        }
    }
    internal class __x_ABI_C__FIMapView_2_HSTRING_HSTRINGImpl : IMapView, AbiInterfaceImpl {
        typealias Key = String
        typealias Value = String
        typealias SwiftProjection = AnyIMapView<String, String>
        typealias CABI = __x_ABI_C__FIMapView_2_HSTRING_HSTRING
        typealias SwiftABI = __ABI_test_component.IMapViewString_String

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIMapView_2_HSTRING_HSTRINGImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIMapView_2_HSTRING_HSTRINGVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: WinRT
        public func lookup(_ key: String) -> String {
            let _key = try! HString(key)
            let result = try! _default.LookupImpl(_key.get())
            return .init(from: result)
        }

        public func hasKey(_ key: String) -> Bool {
            let _key = try! HString(key)
            let result = try! _default.HasKeyImpl(_key.get())
            return .init(from: result)
        }

        public func split(_ first: inout AnyIMapView<String, String>?, _ second: inout AnyIMapView<String, String>?) {
            var _first: UnsafeMutablePointer<__x_ABI_C__FIMapView_2_HSTRING_HSTRING>?
            var _second: UnsafeMutablePointer<__x_ABI_C__FIMapView_2_HSTRING_HSTRING>?
            try! _default.SplitImpl(&_first, &_second)
            first = __IMPL_test_component.__x_ABI_C__FIMapView_2_HSTRING_HSTRINGImpl.from(abi: _first)
            second = __IMPL_test_component.__x_ABI_C__FIMapView_2_HSTRING_HSTRINGImpl.from(abi: _second)
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseImpl : IMapView, AbiInterfaceImpl {
        typealias Key = String
        typealias Value = Base?
        typealias SwiftProjection = AnyIMapView<String, Base?>
        typealias CABI = __x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBase
        typealias SwiftABI = __ABI_test_component.IMapViewString_Base

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: WinRT
        public func lookup(_ key: String) -> Base? {
            let _key = try! HString(key)
            let result = try! _default.LookupImpl(_key.get())
            return .from(abi: result)
        }

        public func hasKey(_ key: String) -> Bool {
            let _key = try! HString(key)
            let result = try! _default.HasKeyImpl(_key.get())
            return .init(from: result)
        }

        public func split(_ first: inout AnyIMapView<String, Base?>?, _ second: inout AnyIMapView<String, Base?>?) {
            var _first: UnsafeMutablePointer<__x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBase>?
            var _second: UnsafeMutablePointer<__x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBase>?
            try! _default.SplitImpl(&_first, &_second)
            first = __IMPL_test_component.__x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseImpl.from(abi: _first)
            second = __IMPL_test_component.__x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseImpl.from(abi: _second)
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIMap_2_HSTRING_HSTRINGImpl : IMap, AbiInterfaceImpl {
        typealias Key = String
        typealias Value = String
        typealias SwiftProjection = AnyIMap<String, String>
        typealias CABI = __x_ABI_C__FIMap_2_HSTRING_HSTRING
        typealias SwiftABI = __ABI_test_component.IMapString_String

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIMap_2_HSTRING_HSTRINGImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIMap_2_HSTRING_HSTRINGVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: WinRT
        public func lookup(_ key: String) -> String {
            let _key = try! HString(key)
            let result = try! _default.LookupImpl(_key.get())
            return .init(from: result)
        }

        public func hasKey(_ key: String) -> Bool {
            let _key = try! HString(key)
            let result = try! _default.HasKeyImpl(_key.get())
            return .init(from: result)
        }

        public func getView() -> AnyIMapView<String, String>? {
            let result = try! _default.GetViewImpl()
            return __ABI_test_component.__x_ABI_C__FIMapView_2_HSTRING_HSTRINGWrapper.unwrapFrom(abi: result)
        }

        public func insert(_ key: String, _ value: String) -> Bool {
            let _key = try! HString(key)
            let _value = try! HString(value)
            let result = try! _default.InsertImpl(_key.get(), _value.get())
            return .init(from: result)
        }

        public func remove(_ key: String) {
            let _key = try! HString(key)
            try! _default.RemoveImpl(_key.get())
        }

        public func clear() {
            try! _default.ClearImpl()
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIMap_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseImpl : IMap, AbiInterfaceImpl {
        typealias Key = String
        typealias Value = Base?
        typealias SwiftProjection = AnyIMap<String, Base?>
        typealias CABI = __x_ABI_C__FIMap_2_HSTRING___x_ABI_Ctest__zcomponent__CBase
        typealias SwiftABI = __ABI_test_component.IMapString_Base

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIMap_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIMap_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: WinRT
        public func lookup(_ key: String) -> Base? {
            let _key = try! HString(key)
            let result = try! _default.LookupImpl(_key.get())
            return .from(abi: result)
        }

        public func hasKey(_ key: String) -> Bool {
            let _key = try! HString(key)
            let result = try! _default.HasKeyImpl(_key.get())
            return .init(from: result)
        }

        public func getView() -> AnyIMapView<String, Base?>? {
            let result = try! _default.GetViewImpl()
            return __ABI_test_component.__x_ABI_C__FIMapView_2_HSTRING___x_ABI_Ctest__zcomponent__CBaseWrapper.unwrapFrom(abi: result)
        }

        public func insert(_ key: String, _ value: Base?) -> Bool {
            let _key = try! HString(key)
            let result = try! _default.InsertImpl(_key.get(), RawPointer(value))
            return .init(from: result)
        }

        public func remove(_ key: String) {
            let _key = try! HString(key)
            try! _default.RemoveImpl(_key.get())
        }

        public func clear() {
            try! _default.ClearImpl()
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIVectorView_1_HSTRINGImpl : IVectorView, AbiInterfaceImpl {
        typealias Element = String
        typealias SwiftProjection = AnyIVectorView<String>
        typealias CABI = __x_ABI_C__FIVectorView_1_HSTRING
        typealias SwiftABI = __ABI_test_component.IVectorViewString

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIVectorView_1_HSTRINGImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIVectorView_1_HSTRINGVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: Collection
        var startIndex: Int { 0 }
        var endIndex: Int { Int(size) }
        func index(after i: Int) -> Int {
            i+1
        }

        func index(of: Element) -> Int? { 
            var index: UInt32 = 0
            let result = indexOf(of, &index)
            guard result else { return nil }
            return Int(index)
        }
        var count: Int { Int(size) }

        subscript(position: Int) -> Element {
            get {
                getAt(UInt32(position))
            }
        }
        // MARK: WinRT
        public func getAt(_ index: UInt32) -> String {
            let result = try! _default.GetAtImpl(index)
            return .init(from: result)
        }

        public func indexOf(_ value: String, _ index: inout UInt32) -> Bool {
            let _value = try! HString(value)
            let result = try! _default.IndexOfImpl(_value.get(), &index)
            return .init(from: result)
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIVectorView_1___x_ABI_Ctest__zcomponent__CBaseImpl : IVectorView, AbiInterfaceImpl {
        typealias Element = Base?
        typealias SwiftProjection = AnyIVectorView<Base?>
        typealias CABI = __x_ABI_C__FIVectorView_1___x_ABI_Ctest__zcomponent__CBase
        typealias SwiftABI = __ABI_test_component.IVectorViewBase

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIVectorView_1___x_ABI_Ctest__zcomponent__CBaseImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIVectorView_1___x_ABI_Ctest__zcomponent__CBaseVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: Collection
        var startIndex: Int { 0 }
        var endIndex: Int { Int(size) }
        func index(after i: Int) -> Int {
            i+1
        }

        func index(of: Element) -> Int? { 
            var index: UInt32 = 0
            let result = indexOf(of, &index)
            guard result else { return nil }
            return Int(index)
        }
        var count: Int { Int(size) }

        subscript(position: Int) -> Element {
            get {
                getAt(UInt32(position))
            }
        }
        // MARK: WinRT
        public func getAt(_ index: UInt32) -> Base? {
            let result = try! _default.GetAtImpl(index)
            return .from(abi: result)
        }

        public func indexOf(_ value: Base?, _ index: inout UInt32) -> Bool {
            let result = try! _default.IndexOfImpl(RawPointer(value), &index)
            return .init(from: result)
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIVector_1_HSTRINGImpl : IVector, AbiInterfaceImpl {
        typealias Element = String
        typealias SwiftProjection = AnyIVector<String>
        typealias CABI = __x_ABI_C__FIVector_1_HSTRING
        typealias SwiftABI = __ABI_test_component.IVectorString

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIVector_1_HSTRINGImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIVector_1_HSTRINGVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: Collection
        var startIndex: Int { 0 }
        var endIndex: Int { Int(size) }
        func index(after i: Int) -> Int {
            i+1
        }

        func index(of: Element) -> Int? { 
            var index: UInt32 = 0
            let result = indexOf(of, &index)
            guard result else { return nil }
            return Int(index)
        }
        var count: Int { Int(size) }


        subscript(position: Int) -> Element {
            get {
                getAt(UInt32(position))
            }
            set(newValue) {
                setAt(UInt32(position), newValue)
            }
        }

        func removeLast() {
            removeAtEnd()
        }

        // MARK: WinRT
        public func getAt(_ index: UInt32) -> String {
            let result = try! _default.GetAtImpl(index)
            return .init(from: result)
        }

        public func getView() -> AnyIVectorView<String>? {
            let result = try! _default.GetViewImpl()
            return __ABI_test_component.__x_ABI_C__FIVectorView_1_HSTRINGWrapper.unwrapFrom(abi: result)
        }

        public func indexOf(_ value: String, _ index: inout UInt32) -> Bool {
            let _value = try! HString(value)
            let result = try! _default.IndexOfImpl(_value.get(), &index)
            return .init(from: result)
        }

        public func setAt(_ index: UInt32, _ value: String) {
            let _value = try! HString(value)
            try! _default.SetAtImpl(index, _value.get())
        }

        public func insertAt(_ index: UInt32, _ value: String) {
            let _value = try! HString(value)
            try! _default.InsertAtImpl(index, _value.get())
        }

        public func removeAt(_ index: UInt32) {
            try! _default.RemoveAtImpl(index)
        }

        public func append(_ value: String) {
            let _value = try! HString(value)
            try! _default.AppendImpl(_value.get())
        }

        public func removeAtEnd() {
            try! _default.RemoveAtEndImpl()
        }

        public func clear() {
            try! _default.ClearImpl()
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIVector_1___x_ABI_Ctest__zcomponent__CBaseImpl : IVector, AbiInterfaceImpl {
        typealias Element = Base?
        typealias SwiftProjection = AnyIVector<Base?>
        typealias CABI = __x_ABI_C__FIVector_1___x_ABI_Ctest__zcomponent__CBase
        typealias SwiftABI = __ABI_test_component.IVectorBase

        private (set) public var _default: SwiftABI

        static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return __x_ABI_C__FIVector_1___x_ABI_Ctest__zcomponent__CBaseImpl(abi)
        }

        internal init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_test_component.__x_ABI_C__FIVector_1___x_ABI_Ctest__zcomponent__CBaseVTable) { $0 }
            return.init(lpVtbl: vtblPtr)
        }

        // MARK: Collection
        var startIndex: Int { 0 }
        var endIndex: Int { Int(size) }
        func index(after i: Int) -> Int {
            i+1
        }

        func index(of: Element) -> Int? { 
            var index: UInt32 = 0
            let result = indexOf(of, &index)
            guard result else { return nil }
            return Int(index)
        }
        var count: Int { Int(size) }


        subscript(position: Int) -> Element {
            get {
                getAt(UInt32(position))
            }
            set(newValue) {
                setAt(UInt32(position), newValue)
            }
        }

        func removeLast() {
            removeAtEnd()
        }

        // MARK: WinRT
        public func getAt(_ index: UInt32) -> Base? {
            let result = try! _default.GetAtImpl(index)
            return .from(abi: result)
        }

        public func getView() -> AnyIVectorView<Base?>? {
            let result = try! _default.GetViewImpl()
            return __ABI_test_component.__x_ABI_C__FIVectorView_1___x_ABI_Ctest__zcomponent__CBaseWrapper.unwrapFrom(abi: result)
        }

        public func indexOf(_ value: Base?, _ index: inout UInt32) -> Bool {
            let result = try! _default.IndexOfImpl(RawPointer(value), &index)
            return .init(from: result)
        }

        public func setAt(_ index: UInt32, _ value: Base?) {
            try! _default.SetAtImpl(index, RawPointer(value))
        }

        public func insertAt(_ index: UInt32, _ value: Base?) {
            try! _default.InsertAtImpl(index, RawPointer(value))
        }

        public func removeAt(_ index: UInt32) {
            try! _default.RemoveAtImpl(index)
        }

        public func append(_ value: Base?) {
            try! _default.AppendImpl(RawPointer(value))
        }

        public func removeAtEnd() {
            try! _default.RemoveAtEndImpl()
        }

        public func clear() {
            try! _default.ClearImpl()
        }

        public var size : UInt32 {
            get {
                let result = try! _default.get_SizeImpl()
                return result
            }

        }

    }

    internal class __x_ABI_C__FIEventHandler_1_IInspectableImpl : WinRTDelegate {
        internal typealias Data = (test_component.IInspectable?, test_component.IInspectable?)
        internal typealias Return = ()
        internal var token: EventRegistrationToken?
        internal var handler: (Data) -> Return
        internal required init(handler: @escaping (Data) -> Return){
            self.handler = handler
        }
    }
    internal class __x_ABI_C__FITypedEventHandler_2___x_ABI_Ctest__zcomponent__CSimple___x_ABI_Ctest__zcomponent__CSimpleEventArgsImpl : WinRTDelegate {
        internal typealias Data = (Simple?, SimpleEventArgs)
        internal typealias Return = ()
        internal var token: EventRegistrationToken?
        internal var handler: (Data) -> Return
        internal required init(handler: @escaping (Data) -> Return){
            self.handler = handler
        }
    }
}
fileprivate extension Int32 {
    init?(ref: UnsafeMutablePointer<__x_ABI_C__FIReference_1_int>?) {
        guard let val = ref else { return nil }
        var result: INT32 = 0
        try! CHECKED(val.pointee.lpVtbl.pointee.get_Value(val, &result))
        self = result
    }
} 
fileprivate extension UUID {
    init?(ref: UnsafeMutablePointer<__x_ABI_C__FIReference_1_GUID>?) {
        guard let val = ref else { return nil }
        var result: GUID = .init()
        try! CHECKED(val.pointee.lpVtbl.pointee.get_Value(val, &result))
        self = result
    }
} 
fileprivate extension test_component.Signed {
    init?(ref: UnsafeMutablePointer<__x_ABI_C__FIReference_1___x_ABI_Ctest__zcomponent__CSigned>?) {
        guard let val = ref else { return nil }
        var result: Signed = .init(0)
        try! CHECKED(val.pointee.lpVtbl.pointee.get_Value(val, &result))
        self = result
    }
} 
