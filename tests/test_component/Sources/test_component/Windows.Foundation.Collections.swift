// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
import Ctest_component

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.collectionchange)
public typealias CollectionChange = __x_ABI_CWindows_CFoundation_CCollections_CCollectionChange
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset)
public final class PropertySet : WinRTClass, IObservableMap, IMap, IIterable, IPropertySet {
    public typealias K = String
    public typealias V = Any?
    public typealias T = AnyIKeyValuePair<String, Any?>?
    private typealias SwiftABI = __ABI_Windows_Foundation_Collections.IPropertySet
    private typealias CABI = __x_ABI_CWindows_CFoundation_CCollections_CIPropertySet
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CFoundation_CCollections_CIPropertySet>?) -> PropertySet? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: test_component.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: test_component.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    private static let _defaultFactory: test_component.IActivationFactory = try! RoGetActivationFactory("Windows.Foundation.Collections.PropertySet")
    override public init() {
        super.init(try! Self._defaultFactory.ActivateInstance())
    }

    private lazy var _IObservableMap: IObservableMapString_Any! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.mapchanged)
    public lazy var mapChanged : Event<MapChangedEventHandler<String, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IObservableMap else { return .init() }
          return try! this.add_MapChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IObservableMap.remove_MapChangedImpl($0)
       }
      )
    }()

    private lazy var _IMap: IMapString_Any! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.lookup)
    public func lookup(_ key: String) -> Any? {
        try! _IMap.LookupImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.haskey)
    public func hasKey(_ key: String) -> Bool {
        try! _IMap.HasKeyImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.getview)
    public func getView() -> AnyIMapView<String, Any?>? {
        try! _IMap.GetViewImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.insert)
    public func insert(_ key: String, _ value: Any?) -> Bool {
        try! _IMap.InsertImpl(key, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.remove)
    public func remove(_ key: String) {
        try! _IMap.RemoveImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.clear)
    public func clear() {
        try! _IMap.ClearImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.size)
    public var size : UInt32 {
        get { try! _IMap.get_SizeImpl() }
    }

    private lazy var _IIterable: IIterableIKeyValuePairString_Any! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.propertyset.first)
    public func first() -> AnyIIterator<AnyIKeyValuePair<String, Any?>?>? {
        try! _IIterable.FirstImpl()
    }

    deinit {
        _IObservableMap = nil
        _IMap = nil
        _IIterable = nil
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap)
public final class StringMap : WinRTClass, IMap, IIterable, IObservableMap {
    public typealias K = String
    public typealias V = String
    public typealias T = AnyIKeyValuePair<String, String>?
    private typealias SwiftABI = test_component.IMapString_String
    private typealias CABI = __x_ABI_C__FIMap_2_HSTRING_HSTRING
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_C__FIMap_2_HSTRING_HSTRING>?) -> StringMap? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: test_component.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: test_component.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    private static let _defaultFactory: test_component.IActivationFactory = try! RoGetActivationFactory("Windows.Foundation.Collections.StringMap")
    override public init() {
        super.init(try! Self._defaultFactory.ActivateInstance())
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.lookup)
    public func lookup(_ key: String) -> String {
        try! _default.LookupImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.haskey)
    public func hasKey(_ key: String) -> Bool {
        try! _default.HasKeyImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.getview)
    public func getView() -> AnyIMapView<String, String>? {
        try! _default.GetViewImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.insert)
    public func insert(_ key: String, _ value: String) -> Bool {
        try! _default.InsertImpl(key, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.remove)
    public func remove(_ key: String) {
        try! _default.RemoveImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.clear)
    public func clear() {
        try! _default.ClearImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.size)
    public var size : UInt32 {
        get { try! _default.get_SizeImpl() }
    }

    private lazy var _IIterable: IIterableIKeyValuePairString_String! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.first)
    public func first() -> AnyIIterator<AnyIKeyValuePair<String, String>?>? {
        try! _IIterable.FirstImpl()
    }

    private lazy var _IObservableMap: IObservableMapString_String! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.stringmap.mapchanged)
    public lazy var mapChanged : Event<MapChangedEventHandler<String, String>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IObservableMap else { return .init() }
          return try! this.add_MapChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IObservableMap.remove_MapChangedImpl($0)
       }
      )
    }()

    deinit {
        _default = nil
        _IIterable = nil
        _IObservableMap = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset)
public final class ValueSet : WinRTClass, IObservableMap, IMap, IIterable, IPropertySet {
    public typealias K = String
    public typealias V = Any?
    public typealias T = AnyIKeyValuePair<String, Any?>?
    private typealias SwiftABI = __ABI_Windows_Foundation_Collections.IPropertySet
    private typealias CABI = __x_ABI_CWindows_CFoundation_CCollections_CIPropertySet
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CFoundation_CCollections_CIPropertySet>?) -> ValueSet? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: test_component.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: test_component.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    private static let _defaultFactory: test_component.IActivationFactory = try! RoGetActivationFactory("Windows.Foundation.Collections.ValueSet")
    override public init() {
        super.init(try! Self._defaultFactory.ActivateInstance())
    }

    private lazy var _IObservableMap: IObservableMapString_Any! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.mapchanged)
    public lazy var mapChanged : Event<MapChangedEventHandler<String, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IObservableMap else { return .init() }
          return try! this.add_MapChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IObservableMap.remove_MapChangedImpl($0)
       }
      )
    }()

    private lazy var _IMap: IMapString_Any! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.lookup)
    public func lookup(_ key: String) -> Any? {
        try! _IMap.LookupImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.haskey)
    public func hasKey(_ key: String) -> Bool {
        try! _IMap.HasKeyImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.getview)
    public func getView() -> AnyIMapView<String, Any?>? {
        try! _IMap.GetViewImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.insert)
    public func insert(_ key: String, _ value: Any?) -> Bool {
        try! _IMap.InsertImpl(key, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.remove)
    public func remove(_ key: String) {
        try! _IMap.RemoveImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.clear)
    public func clear() {
        try! _IMap.ClearImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.size)
    public var size : UInt32 {
        get { try! _IMap.get_SizeImpl() }
    }

    private lazy var _IIterable: IIterableIKeyValuePairString_Any! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.valueset.first)
    public func first() -> AnyIIterator<AnyIKeyValuePair<String, Any?>?>? {
        try! _IIterable.FirstImpl()
    }

    deinit {
        _IObservableMap = nil
        _IMap = nil
        _IIterable = nil
        _default = nil
    }
}

public typealias MapChangedEventHandler<K,V> = (AnyIObservableMap<K, V>?, AnyIMapChangedEventArgs<K>?) throws -> ()
public typealias VectorChangedEventHandler<T> = (AnyIObservableVector<T>?, AnyIVectorChangedEventArgs?) throws -> ()
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iiterable-1)
public protocol IIterable<T> : WinRTInterface {
    associatedtype T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iiterable-1.first)
    func first() -> test_component.AnyIIterator<T>?
}

public typealias AnyIIterable<T> = any IIterable<T>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iiterator-1)
public protocol IIterator<T> : WinRTInterface {
    associatedtype T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iiterator-1.movenext)
    func moveNext() -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iiterator-1.current)
    var current: T { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iiterator-1.hascurrent)
    var hasCurrent: Bool { get }
}

public typealias AnyIIterator<T> = any IIterator<T>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ikeyvaluepair-2)
public protocol IKeyValuePair<K,V> : WinRTInterface {
    associatedtype K
    associatedtype V
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ikeyvaluepair-2.key)
    var key: K { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ikeyvaluepair-2.value)
    var value: V { get }
}

public typealias AnyIKeyValuePair<K,V> = any IKeyValuePair<K,V>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapchangedeventargs-1)
public protocol IMapChangedEventArgs<K> : WinRTInterface {
    associatedtype K
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapchangedeventargs-1.collectionchange)
    var collectionChange: test_component.CollectionChange { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapchangedeventargs-1.key)
    var key: K { get }
}

public typealias AnyIMapChangedEventArgs<K> = any IMapChangedEventArgs<K>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapview-2)
public protocol IMapView<K,V> : IIterable where T == AnyIKeyValuePair<K,V>? {
    associatedtype K
    associatedtype V
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapview-2.lookup)
    func lookup(_ key: K) -> V
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapview-2.haskey)
    func hasKey(_ key: K) -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapview-2.split)
    func split(_ first: inout test_component.AnyIMapView<K, V>?, _ second: inout test_component.AnyIMapView<K, V>?)
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imapview-2.size)
    var size: UInt32 { get }
}

public typealias AnyIMapView<K,V> = any IMapView<K,V>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2)
public protocol IMap<K,V> : IIterable where T == AnyIKeyValuePair<K,V>? {
    associatedtype K
    associatedtype V
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.lookup)
    func lookup(_ key: K) -> V
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.haskey)
    func hasKey(_ key: K) -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.getview)
    func getView() -> test_component.AnyIMapView<K, V>?
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.insert)
    func insert(_ key: K, _ value: V) -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.remove)
    func remove(_ key: K)
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.clear)
    func clear()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.imap-2.size)
    var size: UInt32 { get }
}

public typealias AnyIMap<K,V> = any IMap<K,V>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iobservablemap-2)
public protocol IObservableMap<K,V> : IIterable, IMap {
    associatedtype K
    associatedtype V
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iobservablemap-2.mapchanged)
    var mapChanged: Event<MapChangedEventHandler<K,V>> { get }
}

public typealias AnyIObservableMap<K,V> = any IObservableMap<K,V>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iobservablevector-1)
public protocol IObservableVector<T> : IIterable, IVector {
    associatedtype T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.iobservablevector-1.vectorchanged)
    var vectorChanged: Event<VectorChangedEventHandler<T>> { get }
}

public typealias AnyIObservableVector<T> = any IObservableVector<T>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ipropertyset)
public protocol IPropertySet : IObservableMap<String, Any?>, IMap<String, Any?>, IIterable<AnyIKeyValuePair<String, Any?>?> {
}

extension IPropertySet {
    public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_Foundation_Collections.IPropertySetWrapper.IID:
                let wrapper = __ABI_Windows_Foundation_Collections.IPropertySetWrapper(self)
                return wrapper!.queryInterface(iid)
            case test_component.__x_ABI_C__FIObservableMap_2_HSTRING_IInspectableWrapper.IID:
                let wrapper = test_component.__x_ABI_C__FIObservableMap_2_HSTRING_IInspectableWrapper(self)
                return wrapper!.queryInterface(iid)
            case test_component.__x_ABI_C__FIMap_2_HSTRING_IInspectableWrapper.IID:
                let wrapper = test_component.__x_ABI_C__FIMap_2_HSTRING_IInspectableWrapper(self)
                return wrapper!.queryInterface(iid)
            case test_component.__x_ABI_C__FIIterable_1___x_ABI_C__FIKeyValuePair_2_HSTRING_IInspectableWrapper.IID:
                let wrapper = test_component.__x_ABI_C__FIIterable_1___x_ABI_C__FIKeyValuePair_2_HSTRING_IInspectableWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIPropertySet = any IPropertySet

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorchangedeventargs)
public protocol IVectorChangedEventArgs : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorchangedeventargs.collectionchange)
    var collectionChange: test_component.CollectionChange { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorchangedeventargs.index)
    var index: UInt32 { get }
}

extension IVectorChangedEventArgs {
    public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_Foundation_Collections.IVectorChangedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_Foundation_Collections.IVectorChangedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIVectorChangedEventArgs = any IVectorChangedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorview-1)
public protocol IVectorView<T> : IIterable, Collection where Element == T, Index == Int {
    associatedtype T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorview-1.getat)
    func getAt(_ index: UInt32) -> T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorview-1.indexof)
    func indexOf(_ value: T, _ index: inout UInt32) -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivectorview-1.size)
    var size: UInt32 { get }
}

public typealias AnyIVectorView<T> = any IVectorView<T>

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1)
public protocol IVector<T> : IIterable, Collection where Element == T, Index == Int {
    associatedtype T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.getat)
    func getAt(_ index: UInt32) -> T
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.getview)
    func getView() -> test_component.AnyIVectorView<T>?
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.indexof)
    func indexOf(_ value: T, _ index: inout UInt32) -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.setat)
    func setAt(_ index: UInt32, _ value: T)
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.insertat)
    func insertAt(_ index: UInt32, _ value: T)
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.removeat)
    func removeAt(_ index: UInt32)
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.append)
    func append(_ value: T)
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.removeatend)
    func removeAtEnd()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.clear)
    func clear()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.foundation.collections.ivector-1.size)
    var size: UInt32 { get }
}

public typealias AnyIVector<T> = any IVector<T>

extension test_component.CollectionChange {
    public static var reset : test_component.CollectionChange {
        CollectionChange_Reset
    }
    public static var itemInserted : test_component.CollectionChange {
        CollectionChange_ItemInserted
    }
    public static var itemRemoved : test_component.CollectionChange {
        CollectionChange_ItemRemoved
    }
    public static var itemChanged : test_component.CollectionChange {
        CollectionChange_ItemChanged
    }
}
extension test_component.CollectionChange: @retroactive Hashable, @retroactive Codable, @retroactive Sendable {}

