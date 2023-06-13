// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
import Ctest_component

public enum __IMPL_Windows_Foundation {
    public class IAsyncActionImpl : IAsyncAction, WinRTAbiBridge {
        public typealias CABI = __x_ABI_CWindows_CFoundation_CIAsyncAction
        public typealias SwiftABI = __ABI_Windows_Foundation.IAsyncAction
        public typealias SwiftProjection = AnyIAsyncAction
        private (set) public var _default: SwiftABI
        public var thisPtr: test_component.IInspectable { _default }
        public static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IAsyncActionImpl(abi)
        }
        public init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Windows_Foundation.IAsyncActionVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
        public func getResults() throws {
            try _default.GetResultsImpl()
        }

        public var completed : AsyncActionCompletedHandler! {
            get {
                let handler = try! _default.get_CompletedImpl()
                return __ABI_Windows_Foundation.AsyncActionCompletedHandlerWrapper.unwrapFrom(abi: handler)
            }

            set {
                let wrapper = __ABI_Windows_Foundation.AsyncActionCompletedHandlerWrapper(newValue)
                let _newValue = try! wrapper?.toABI { $0 }
                try! _default.put_CompletedImpl(_newValue)
            }
        }

    }

    public class IClosableImpl : IClosable, WinRTAbiBridge {
        public typealias CABI = __x_ABI_CWindows_CFoundation_CIClosable
        public typealias SwiftABI = __ABI_Windows_Foundation.IClosable
        public typealias SwiftProjection = AnyIClosable
        private (set) public var _default: SwiftABI
        public var thisPtr: test_component.IInspectable { _default }
        public static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IClosableImpl(abi)
        }
        public init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Windows_Foundation.IClosableVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
        public func close() throws {
            try _default.CloseImpl()
        }

    }

    public class IPropertyValueImpl : IPropertyValue, IReference {
        var _value: Any
        var propertyType : PropertyType

        public init(value: Any) {
            _value = value
            if _value is Int32 {
                propertyType = .int32
            } else if _value is UInt8 {
                propertyType = .uint8
            } else if _value is Int16 {
                propertyType = .int16
            } else if _value is UInt32 {
                propertyType = .uint32
            } else if _value is Int64 {
                propertyType = .int64
            } else if _value is UInt64 {
                propertyType = .uint64
            } else if _value is Float {
                propertyType = .single
            } else if _value is Double {
                propertyType = .double
            } else if _value is Character {
                propertyType = .char16
            } else if _value is Bool {
                propertyType = .boolean
            } else if _value is DateTime {
                propertyType = .dateTime
            } else if _value is TimeSpan {
                propertyType = .timeSpan
            } else if _value is IWinRTObject {
                propertyType = .inspectable
            } else if _value is IInspectable {
                propertyType = .inspectable
            } else {
                propertyType = .otherType
            }
        }

        public var type: PropertyType { propertyType }
        public var isNumericScalar: Bool { 
            switch propertyType {
                case .int16, .int32, .int64, .uint8, .uint16, .uint32, .uint64, .single, .double: return true
                default: return false
            }
        }

        public var value: Any { _value }

        public func getUInt8() -> UInt8 { _value as! UInt8 }
        public func getInt16() -> Int16 { _value as! Int16 }
        public func getUInt16() -> UInt16 { _value as! UInt16 }
        public func getInt32() -> Int32 { _value as! Int32 }
        public func getUInt32() -> UInt32 { _value as! UInt32 }
        public func getInt64() -> Int64 { _value as! Int64 }
        public func getUInt64() -> UInt64 { _value as! UInt64 }
        public func getSingle() -> Float { _value as! Float }
        public func getDouble() -> Double { _value as! Double }
        public func getChar16() -> Character { _value as! Character }
        public func getBoolean() -> Bool { _value as! Bool }
        public func getString() -> String { _value as! String }
        public func getGuid() -> UUID { _value as! UUID }
        public func getDateTime() -> DateTime { _value as! DateTime } 
        public func getTimeSpan() -> TimeSpan { _value as! TimeSpan }
        public func getPoint() -> Point { _value as! Point }
        public func getSize() -> Size { _value as! Size }
        public func getRect() -> Rect { _value as! Rect }
        
        public func makeAbi() -> test_component.IInspectable { fatalError("not implemented") }

    }

    public class IStringableImpl : IStringable, WinRTAbiBridge {
        public typealias CABI = __x_ABI_CWindows_CFoundation_CIStringable
        public typealias SwiftABI = __ABI_Windows_Foundation.IStringable
        public typealias SwiftProjection = AnyIStringable
        private (set) public var _default: SwiftABI
        public var thisPtr: test_component.IInspectable { _default }
        public static func from(abi: UnsafeMutablePointer<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IStringableImpl(abi)
        }
        public init(_ fromAbi: UnsafeMutablePointer<CABI>) {
            _default = SwiftABI(fromAbi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Windows_Foundation.IStringableVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
        public func toString() throws -> String {
            let value = try _default.ToStringImpl()
            return .init(from: value)
        }

    }

    public class AsyncActionCompletedHandlerImpl : WinRTDelegateBridge {
        public typealias Data = (AnyIAsyncAction?, AsyncStatus)
        public typealias Return = ()
        public typealias CABI = __x_ABI_CWindows_CFoundation_CIAsyncActionCompletedHandler
        public var handler: (Data) -> Return
        public required init(handler: @escaping (Data) -> Return){
            self.handler = handler
        }
    }
}
@_spi(__MakeFromAbi_DoNotImport)
public class IAsyncAction_MakeFromAbi : MakeFromAbi {
    public typealias CABI = __x_ABI_CWindows_CFoundation_CIAsyncAction
    public typealias SwiftABI = __ABI_Windows_Foundation.IAsyncAction
    public typealias SwiftProjection = AnyIAsyncAction
    public static func from(abi: UnsafeMutableRawPointer?) -> SwiftProjection? {
        guard let abi else { return nil }
        let swiftAbi: SwiftABI = try! test_component.IInspectable(abi).QueryInterface()
        return __IMPL_Windows_Foundation.IAsyncActionImpl(RawPointer(swiftAbi)!)
    }
}

@_spi(__MakeFromAbi_DoNotImport)
public class IClosable_MakeFromAbi : MakeFromAbi {
    public typealias CABI = __x_ABI_CWindows_CFoundation_CIClosable
    public typealias SwiftABI = __ABI_Windows_Foundation.IClosable
    public typealias SwiftProjection = AnyIClosable
    public static func from(abi: UnsafeMutableRawPointer?) -> SwiftProjection? {
        guard let abi else { return nil }
        let swiftAbi: SwiftABI = try! test_component.IInspectable(abi).QueryInterface()
        return __IMPL_Windows_Foundation.IClosableImpl(RawPointer(swiftAbi)!)
    }
}

@_spi(__MakeFromAbi_DoNotImport)
public class IStringable_MakeFromAbi : MakeFromAbi {
    public typealias CABI = __x_ABI_CWindows_CFoundation_CIStringable
    public typealias SwiftABI = __ABI_Windows_Foundation.IStringable
    public typealias SwiftProjection = AnyIStringable
    public static func from(abi: UnsafeMutableRawPointer?) -> SwiftProjection? {
        guard let abi else { return nil }
        let swiftAbi: SwiftABI = try! test_component.IInspectable(abi).QueryInterface()
        return __IMPL_Windows_Foundation.IStringableImpl(RawPointer(swiftAbi)!)
    }
}

