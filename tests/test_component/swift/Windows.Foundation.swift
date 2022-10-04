// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1

import Ctest_component

extension Foundation {
    public typealias PropertyType = __x_ABI_CWindows_CFoundation_CPropertyType
    public struct DateTime {
        public var UniversalTime: Int64 = 0
        public init() {}
        public init(UniversalTime: Int64) {
            self.UniversalTime = UniversalTime
        }
    }

    public struct Point {
        public var X: Float = 0.0
        public var Y: Float = 0.0
        public init() {}
        public init(X: Float, Y: Float) {
            self.X = X
            self.Y = Y
        }
    }

    public struct Rect {
        public var X: Float = 0.0
        public var Y: Float = 0.0
        public var Width: Float = 0.0
        public var Height: Float = 0.0
        public init() {}
        public init(X: Float, Y: Float, Width: Float, Height: Float) {
            self.X = X
            self.Y = Y
            self.Width = Width
            self.Height = Height
        }
    }

    public struct Size {
        public var Width: Float = 0.0
        public var Height: Float = 0.0
        public init() {}
        public init(Width: Float, Height: Float) {
            self.Width = Width
            self.Height = Height
        }
    }

    public struct TimeSpan {
        public var Duration: Int64 = 0
        public init() {}
        public init(Duration: Int64) {
            self.Duration = Duration
        }
    }

    public typealias IPropertyValue = test_component.IPropertyValuePrototype

    public enum Impl {
            public class IPropertyValueImpl : IPropertyValue, IReference {
                var _value: Any
                var propertyType : Foundation.PropertyType

                public init(value: Any) {
                    _value = value
                    if _value is Int32 {
                        propertyType = .Int32
                    } else if _value is UInt8 {
                        propertyType = .UInt8
                    } else if _value is Int16 {
                        propertyType = .Int16
                    } else if _value is UInt32 {
                        propertyType = .UInt32
                    } else if _value is Int64 {
                        propertyType = .Int64
                    } else if _value is UInt64 {
                        propertyType = .UInt64
                    } else if _value is Float {
                        propertyType = .Single
                    } else if _value is Double {
                        propertyType = .Double
                    } else if _value is Character {
                        propertyType = .Char16
                    } else if _value is Bool {
                        propertyType = .Boolean
                    } else if _value is Foundation.DateTime {
                        propertyType = .DateTime
                    } else if _value is Foundation.TimeSpan {
                        propertyType = .TimeSpan
                    } else if _value is IWinRTObject {
                        propertyType = .Inspectable
                    } else if _value is IInspectable {
                        propertyType = .Inspectable
                    } else {
                        propertyType = .OtherType
                    }
                }

                public var `Type`: Foundation.PropertyType { propertyType }
                public var IsNumericScalar: Bool { 
                    switch propertyType {
                        case .Int16, .Int32, .UInt16, .UInt8, .Int64, .UInt64, .Single, .Double: return true
                        default: return false
                    }
                }

                public var Value: Any { _value }

                public func GetUInt8() -> UInt8 { _value as! UInt8 }
                public func GetInt16() -> Int16 { _value as! Int16 }
                public func GetUInt16() -> UInt16 { _value as! UInt16 }
                public func GetInt32() -> Int32 { _value as! Int32 }
                public func GetUInt32() -> UInt32 { _value as! UInt32 }
                public func GetInt64() -> Int64 { _value as! Int64 }
                public func GetUInt64() -> UInt64 { _value as! UInt64 }
                public func GetSingle() -> Float { _value as! Float }
                public func GetDouble() -> Double { _value as! Double }
                public func GetChar16() -> Character { _value as! Character }
                public func GetBoolean() -> Bool { _value as! Bool }
                public func GetString() -> String { _value as! String }
                public func GetGuid() -> UUID { _value as! UUID }
                public func GetDateTime() -> Foundation.DateTime { _value as! Foundation.DateTime } 
                public func GetTimeSpan() -> Foundation.TimeSpan { _value as! Foundation.TimeSpan }
                public func GetPoint() -> Foundation.Point { _value as! Foundation.Point }
                public func GetSize() -> Foundation.Size { _value as! Foundation.Size }
                public func GetRect() -> Foundation.Rect { _value as! Foundation.Rect }
            }

    }
    }
public protocol IPropertyValuePrototype : IWinRTObject { 
        func GetUInt8() -> UInt8 
        func GetInt16() -> Int16 
        func GetUInt16() -> UInt16 
        func GetInt32() -> Int32 
        func GetUInt32() -> UInt32 
        func GetInt64() -> Int64 
        func GetUInt64() -> UInt64 
        func GetSingle() -> Float 
        func GetDouble() -> Double 
        func GetChar16() -> Character 
        func GetBoolean() -> Bool 
        func GetString() -> String 
        func GetGuid() -> UUID 
        func GetDateTime() -> Foundation.DateTime 
        func GetTimeSpan() -> Foundation.TimeSpan 
        func GetPoint() -> Foundation.Point 
        func GetSize() -> Foundation.Size 
        func GetRect() -> Foundation.Rect 
        var IsNumericScalar: Bool { get }
        var `Type`: Foundation.PropertyType { get }
}
public protocol IReference : Foundation.IPropertyValue {
    var Value: Any { get }
}
extension Foundation.PropertyType {
    public static var Empty : Foundation.PropertyType {
        PropertyType_Empty
    }
    public static var UInt8 : Foundation.PropertyType {
        PropertyType_UInt8
    }
    public static var Int16 : Foundation.PropertyType {
        PropertyType_Int16
    }
    public static var UInt16 : Foundation.PropertyType {
        PropertyType_UInt16
    }
    public static var Int32 : Foundation.PropertyType {
        PropertyType_Int32
    }
    public static var UInt32 : Foundation.PropertyType {
        PropertyType_UInt32
    }
    public static var Int64 : Foundation.PropertyType {
        PropertyType_Int64
    }
    public static var UInt64 : Foundation.PropertyType {
        PropertyType_UInt64
    }
    public static var Single : Foundation.PropertyType {
        PropertyType_Single
    }
    public static var Double : Foundation.PropertyType {
        PropertyType_Double
    }
    public static var Char16 : Foundation.PropertyType {
        PropertyType_Char16
    }
    public static var Boolean : Foundation.PropertyType {
        PropertyType_Boolean
    }
    public static var String : Foundation.PropertyType {
        PropertyType_String
    }
    public static var Inspectable : Foundation.PropertyType {
        PropertyType_Inspectable
    }
    public static var DateTime : Foundation.PropertyType {
        PropertyType_DateTime
    }
    public static var TimeSpan : Foundation.PropertyType {
        PropertyType_TimeSpan
    }
    public static var Guid : Foundation.PropertyType {
        PropertyType_Guid
    }
    public static var Point : Foundation.PropertyType {
        PropertyType_Point
    }
    public static var Size : Foundation.PropertyType {
        PropertyType_Size
    }
    public static var Rect : Foundation.PropertyType {
        PropertyType_Rect
    }
    public static var OtherType : Foundation.PropertyType {
        PropertyType_OtherType
    }
    public static var UInt8Array : Foundation.PropertyType {
        PropertyType_UInt8Array
    }
    public static var Int16Array : Foundation.PropertyType {
        PropertyType_Int16Array
    }
    public static var UInt16Array : Foundation.PropertyType {
        PropertyType_UInt16Array
    }
    public static var Int32Array : Foundation.PropertyType {
        PropertyType_Int32Array
    }
    public static var UInt32Array : Foundation.PropertyType {
        PropertyType_UInt32Array
    }
    public static var Int64Array : Foundation.PropertyType {
        PropertyType_Int64Array
    }
    public static var UInt64Array : Foundation.PropertyType {
        PropertyType_UInt64Array
    }
    public static var SingleArray : Foundation.PropertyType {
        PropertyType_SingleArray
    }
    public static var DoubleArray : Foundation.PropertyType {
        PropertyType_DoubleArray
    }
    public static var Char16Array : Foundation.PropertyType {
        PropertyType_Char16Array
    }
    public static var BooleanArray : Foundation.PropertyType {
        PropertyType_BooleanArray
    }
    public static var StringArray : Foundation.PropertyType {
        PropertyType_StringArray
    }
    public static var InspectableArray : Foundation.PropertyType {
        PropertyType_InspectableArray
    }
    public static var DateTimeArray : Foundation.PropertyType {
        PropertyType_DateTimeArray
    }
    public static var TimeSpanArray : Foundation.PropertyType {
        PropertyType_TimeSpanArray
    }
    public static var GuidArray : Foundation.PropertyType {
        PropertyType_GuidArray
    }
    public static var PointArray : Foundation.PropertyType {
        PropertyType_PointArray
    }
    public static var SizeArray : Foundation.PropertyType {
        PropertyType_SizeArray
    }
    public static var RectArray : Foundation.PropertyType {
        PropertyType_RectArray
    }
    public static var OtherTypeArray : Foundation.PropertyType {
        PropertyType_OtherTypeArray
    }
}

