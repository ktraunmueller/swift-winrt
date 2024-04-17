// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
import Ctest_component

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.commonfilequery)
public typealias CommonFileQuery = __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.commonfolderquery)
public typealias CommonFolderQuery = __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.datestackoption)
public typealias DateStackOption = __x_ABI_CWindows_CStorage_CSearch_CDateStackOption
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.folderdepth)
public typealias FolderDepth = __x_ABI_CWindows_CStorage_CSearch_CFolderDepth
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.indexedstate)
public typealias IndexedState = __x_ABI_CWindows_CStorage_CSearch_CIndexedState
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.indexeroption)
public typealias IndexerOption = __x_ABI_CWindows_CStorage_CSearch_CIndexerOption
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions)
public final class QueryOptions : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_Storage_Search.IQueryOptions
    private typealias CABI = __x_ABI_CWindows_CStorage_CSearch_CIQueryOptions
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CStorage_CSearch_CIQueryOptions>?) -> QueryOptions? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: test_component.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: test_component.IInspectable) {
        super.init(fromAbi)
    }

    private static let _defaultFactory: test_component.IActivationFactory = try! RoGetActivationFactory("Windows.Storage.Search.QueryOptions")
    override public init() {
        super.init(try! Self._defaultFactory.ActivateInstance())
    }

    private static let _IQueryOptionsFactory: __ABI_Windows_Storage_Search.IQueryOptionsFactory = try! RoGetActivationFactory("Windows.Storage.Search.QueryOptions")
    public init(_ query: CommonFileQuery, _ fileTypeFilter: AnyIIterable<String>!) {
        super.init(try! Self._IQueryOptionsFactory.CreateCommonFileQueryImpl(query, fileTypeFilter))
    }

    public init(_ query: CommonFolderQuery) {
        super.init(try! Self._IQueryOptionsFactory.CreateCommonFolderQueryImpl(query))
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.savetostring)
    public func saveToString() throws -> String {
        try _default.SaveToStringImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.loadfromstring)
    public func loadFromString(_ value: String) throws {
        try _default.LoadFromStringImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.setthumbnailprefetch)
    public func setThumbnailPrefetch(_ mode: test_component.ThumbnailMode, _ requestedSize: UInt32, _ options: test_component.ThumbnailOptions) throws {
        try _default.SetThumbnailPrefetchImpl(mode, requestedSize, options)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.setpropertyprefetch)
    public func setPropertyPrefetch(_ options: test_component.PropertyPrefetchOptions, _ propertiesToRetrieve: AnyIIterable<String>!) throws {
        try _default.SetPropertyPrefetchImpl(options, propertiesToRetrieve)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.applicationsearchfilter)
    public var applicationSearchFilter : String {
        get { try! _default.get_ApplicationSearchFilterImpl() }
        set { try! _default.put_ApplicationSearchFilterImpl(newValue) }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.datestackoption)
    public var dateStackOption : DateStackOption {
        get { try! _default.get_DateStackOptionImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.filetypefilter)
    public var fileTypeFilter : AnyIVector<String>! {
        get { try! _default.get_FileTypeFilterImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.folderdepth)
    public var folderDepth : FolderDepth {
        get { try! _default.get_FolderDepthImpl() }
        set { try! _default.put_FolderDepthImpl(newValue) }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.grouppropertyname)
    public var groupPropertyName : String {
        get { try! _default.get_GroupPropertyNameImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.indexeroption)
    public var indexerOption : IndexerOption {
        get { try! _default.get_IndexerOptionImpl() }
        set { try! _default.put_IndexerOptionImpl(newValue) }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.language)
    public var language : String {
        get { try! _default.get_LanguageImpl() }
        set { try! _default.put_LanguageImpl(newValue) }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.sortorder)
    public var sortOrder : AnyIVector<SortEntry>! {
        get { try! _default.get_SortOrderImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.usersearchfilter)
    public var userSearchFilter : String {
        get { try! _default.get_UserSearchFilterImpl() }
        set { try! _default.put_UserSearchFilterImpl(newValue) }
    }

    private lazy var _IQueryOptionsWithProviderFilter: __ABI_Windows_Storage_Search.IQueryOptionsWithProviderFilter! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.queryoptions.storageprovideridfilter)
    public var storageProviderIdFilter : AnyIVector<String>! {
        get { try! _IQueryOptionsWithProviderFilter.get_StorageProviderIdFilterImpl() }
    }

    deinit {
        _default = nil
        _IQueryOptionsWithProviderFilter = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult)
public final class StorageFileQueryResult : WinRTClass, IStorageQueryResultBase {
    private typealias SwiftABI = __ABI_Windows_Storage_Search.IStorageFileQueryResult
    private typealias CABI = __x_ABI_CWindows_CStorage_CSearch_CIStorageFileQueryResult
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CStorage_CSearch_CIStorageFileQueryResult>?) -> StorageFileQueryResult? {
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
    private lazy var _IStorageQueryResultBase: __ABI_Windows_Storage_Search.IStorageQueryResultBase! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.getitemcountasync)
    public func getItemCountAsync() throws -> AnyIAsyncOperation<UInt32>! {
        try _IStorageQueryResultBase.GetItemCountAsyncImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.findstartindexasync)
    public func findStartIndexAsync(_ value: Any!) throws -> AnyIAsyncOperation<UInt32>! {
        try _IStorageQueryResultBase.FindStartIndexAsyncImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.getcurrentqueryoptions)
    public func getCurrentQueryOptions() throws -> QueryOptions! {
        try _IStorageQueryResultBase.GetCurrentQueryOptionsImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.applynewqueryoptions)
    public func applyNewQueryOptions(_ newQueryOptions: QueryOptions!) throws {
        try _IStorageQueryResultBase.ApplyNewQueryOptionsImpl(newQueryOptions)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.folder)
    public var folder : test_component.StorageFolder! {
        get { try! _IStorageQueryResultBase.get_FolderImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.contentschanged)
    public lazy var contentsChanged : Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IStorageQueryResultBase else { return .init() }
          return try! this.add_ContentsChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IStorageQueryResultBase.remove_ContentsChangedImpl($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.optionschanged)
    public lazy var optionsChanged : Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IStorageQueryResultBase else { return .init() }
          return try! this.add_OptionsChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IStorageQueryResultBase.remove_OptionsChangedImpl($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.getfilesasync)
    public func getFilesAsync(_ startIndex: UInt32, _ maxNumberOfItems: UInt32) throws -> AnyIAsyncOperation<AnyIVectorView<test_component.StorageFile?>?>! {
        try _default.GetFilesAsyncImpl(startIndex, maxNumberOfItems)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.getfilesasync)
    public func getFilesAsync() throws -> AnyIAsyncOperation<AnyIVectorView<test_component.StorageFile?>?>! {
        try _default.GetFilesAsyncDefaultStartAndCountImpl()
    }

    private lazy var _IStorageFileQueryResult2: __ABI_Windows_Storage_Search.IStorageFileQueryResult2! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefilequeryresult.getmatchingpropertieswithranges)
    public func getMatchingPropertiesWithRanges(_ file: test_component.StorageFile!) throws -> AnyIMap<String, AnyIVectorView<test_component.TextSegment>?>! {
        try _IStorageFileQueryResult2.GetMatchingPropertiesWithRangesImpl(file)
    }

    deinit {
        _IStorageQueryResultBase = nil
        _default = nil
        _IStorageFileQueryResult2 = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult)
public final class StorageFolderQueryResult : WinRTClass, IStorageQueryResultBase {
    private typealias SwiftABI = __ABI_Windows_Storage_Search.IStorageFolderQueryResult
    private typealias CABI = __x_ABI_CWindows_CStorage_CSearch_CIStorageFolderQueryResult
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CStorage_CSearch_CIStorageFolderQueryResult>?) -> StorageFolderQueryResult? {
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
    private lazy var _IStorageQueryResultBase: __ABI_Windows_Storage_Search.IStorageQueryResultBase! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.getitemcountasync)
    public func getItemCountAsync() throws -> AnyIAsyncOperation<UInt32>! {
        try _IStorageQueryResultBase.GetItemCountAsyncImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.findstartindexasync)
    public func findStartIndexAsync(_ value: Any!) throws -> AnyIAsyncOperation<UInt32>! {
        try _IStorageQueryResultBase.FindStartIndexAsyncImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.getcurrentqueryoptions)
    public func getCurrentQueryOptions() throws -> QueryOptions! {
        try _IStorageQueryResultBase.GetCurrentQueryOptionsImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.applynewqueryoptions)
    public func applyNewQueryOptions(_ newQueryOptions: QueryOptions!) throws {
        try _IStorageQueryResultBase.ApplyNewQueryOptionsImpl(newQueryOptions)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.folder)
    public var folder : test_component.StorageFolder! {
        get { try! _IStorageQueryResultBase.get_FolderImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.contentschanged)
    public lazy var contentsChanged : Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IStorageQueryResultBase else { return .init() }
          return try! this.add_ContentsChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IStorageQueryResultBase.remove_ContentsChangedImpl($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.optionschanged)
    public lazy var optionsChanged : Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IStorageQueryResultBase else { return .init() }
          return try! this.add_OptionsChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IStorageQueryResultBase.remove_OptionsChangedImpl($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.getfoldersasync)
    public func getFoldersAsync(_ startIndex: UInt32, _ maxNumberOfItems: UInt32) throws -> AnyIAsyncOperation<AnyIVectorView<test_component.StorageFolder?>?>! {
        try _default.GetFoldersAsyncImpl(startIndex, maxNumberOfItems)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storagefolderqueryresult.getfoldersasync)
    public func getFoldersAsync() throws -> AnyIAsyncOperation<AnyIVectorView<test_component.StorageFolder?>?>! {
        try _default.GetFoldersAsyncDefaultStartAndCountImpl()
    }

    deinit {
        _IStorageQueryResultBase = nil
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult)
public final class StorageItemQueryResult : WinRTClass, IStorageQueryResultBase {
    private typealias SwiftABI = __ABI_Windows_Storage_Search.IStorageItemQueryResult
    private typealias CABI = __x_ABI_CWindows_CStorage_CSearch_CIStorageItemQueryResult
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CStorage_CSearch_CIStorageItemQueryResult>?) -> StorageItemQueryResult? {
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
    private lazy var _IStorageQueryResultBase: __ABI_Windows_Storage_Search.IStorageQueryResultBase! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.getitemcountasync)
    public func getItemCountAsync() throws -> AnyIAsyncOperation<UInt32>! {
        try _IStorageQueryResultBase.GetItemCountAsyncImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.findstartindexasync)
    public func findStartIndexAsync(_ value: Any!) throws -> AnyIAsyncOperation<UInt32>! {
        try _IStorageQueryResultBase.FindStartIndexAsyncImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.getcurrentqueryoptions)
    public func getCurrentQueryOptions() throws -> QueryOptions! {
        try _IStorageQueryResultBase.GetCurrentQueryOptionsImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.applynewqueryoptions)
    public func applyNewQueryOptions(_ newQueryOptions: QueryOptions!) throws {
        try _IStorageQueryResultBase.ApplyNewQueryOptionsImpl(newQueryOptions)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.folder)
    public var folder : test_component.StorageFolder! {
        get { try! _IStorageQueryResultBase.get_FolderImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.contentschanged)
    public lazy var contentsChanged : Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IStorageQueryResultBase else { return .init() }
          return try! this.add_ContentsChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IStorageQueryResultBase.remove_ContentsChangedImpl($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.optionschanged)
    public lazy var optionsChanged : Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._IStorageQueryResultBase else { return .init() }
          return try! this.add_OptionsChangedImpl($0)
        },
        remove: { [weak self] in
         try? self?._IStorageQueryResultBase.remove_OptionsChangedImpl($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.getitemsasync)
    public func getItemsAsync(_ startIndex: UInt32, _ maxNumberOfItems: UInt32) throws -> AnyIAsyncOperation<AnyIVectorView<test_component.AnyIStorageItem?>?>! {
        try _default.GetItemsAsyncImpl(startIndex, maxNumberOfItems)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.storageitemqueryresult.getitemsasync)
    public func getItemsAsync() throws -> AnyIAsyncOperation<AnyIVectorView<test_component.AnyIStorageItem?>?>! {
        try _default.GetItemsAsyncDefaultStartAndCountImpl()
    }

    deinit {
        _IStorageQueryResultBase = nil
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.sortentry)
public struct SortEntry: Hashable, Codable, Sendable {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.sortentry.propertyname)
    public var propertyName: String = ""
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.sortentry.ascendingorder)
    public var ascendingOrder: Bool = false
    public init() {}
    public init(propertyName: String, ascendingOrder: Bool) {
        self.propertyName = propertyName
        self.ascendingOrder = ascendingOrder
    }
    public static func from(abi: __x_ABI_CWindows_CStorage_CSearch_CSortEntry) -> SortEntry {
        .init(propertyName: .init(from: abi.PropertyName), ascendingOrder: .init(from: abi.AscendingOrder))
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations)
public protocol IStorageFolderQueryOperations : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.getindexedstateasync)
    func getIndexedStateAsync() throws -> test_component.AnyIAsyncOperation<test_component.IndexedState>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createfilequery)
    func createFileQuery() throws -> test_component.StorageFileQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createfilequery)
    func createFileQuery(_ query: test_component.CommonFileQuery) throws -> test_component.StorageFileQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createfilequerywithoptions)
    func createFileQueryWithOptions(_ queryOptions: test_component.QueryOptions!) throws -> test_component.StorageFileQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createfolderquery)
    func createFolderQuery() throws -> test_component.StorageFolderQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createfolderquery)
    func createFolderQuery(_ query: test_component.CommonFolderQuery) throws -> test_component.StorageFolderQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createfolderquerywithoptions)
    func createFolderQueryWithOptions(_ queryOptions: test_component.QueryOptions!) throws -> test_component.StorageFolderQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createitemquery)
    func createItemQuery() throws -> test_component.StorageItemQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.createitemquerywithoptions)
    func createItemQueryWithOptions(_ queryOptions: test_component.QueryOptions!) throws -> test_component.StorageItemQueryResult!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.getfilesasync)
    func getFilesAsync(_ query: test_component.CommonFileQuery, _ startIndex: UInt32, _ maxItemsToRetrieve: UInt32) throws -> test_component.AnyIAsyncOperation<test_component.AnyIVectorView<test_component.StorageFile?>?>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.getfilesasync)
    func getFilesAsync(_ query: test_component.CommonFileQuery) throws -> test_component.AnyIAsyncOperation<test_component.AnyIVectorView<test_component.StorageFile?>?>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.getfoldersasync)
    func getFoldersAsync(_ query: test_component.CommonFolderQuery, _ startIndex: UInt32, _ maxItemsToRetrieve: UInt32) throws -> test_component.AnyIAsyncOperation<test_component.AnyIVectorView<test_component.StorageFolder?>?>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.getfoldersasync)
    func getFoldersAsync(_ query: test_component.CommonFolderQuery) throws -> test_component.AnyIAsyncOperation<test_component.AnyIVectorView<test_component.StorageFolder?>?>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.getitemsasync)
    func getItemsAsync(_ startIndex: UInt32, _ maxItemsToRetrieve: UInt32) throws -> test_component.AnyIAsyncOperation<test_component.AnyIVectorView<test_component.AnyIStorageItem?>?>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.arequeryoptionssupported)
    func areQueryOptionsSupported(_ queryOptions: test_component.QueryOptions!) throws -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.iscommonfolderquerysupported)
    func isCommonFolderQuerySupported(_ query: test_component.CommonFolderQuery) throws -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragefolderqueryoperations.iscommonfilequerysupported)
    func isCommonFileQuerySupported(_ query: test_component.CommonFileQuery) throws -> Bool
}

extension IStorageFolderQueryOperations {
    public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_Storage_Search.IStorageFolderQueryOperationsWrapper.IID:
                let wrapper = __ABI_Windows_Storage_Search.IStorageFolderQueryOperationsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIStorageFolderQueryOperations = any IStorageFolderQueryOperations

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase)
public protocol IStorageQueryResultBase : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.getitemcountasync)
    func getItemCountAsync() throws -> test_component.AnyIAsyncOperation<UInt32>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.findstartindexasync)
    func findStartIndexAsync(_ value: Any!) throws -> test_component.AnyIAsyncOperation<UInt32>!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.getcurrentqueryoptions)
    func getCurrentQueryOptions() throws -> test_component.QueryOptions!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.applynewqueryoptions)
    func applyNewQueryOptions(_ newQueryOptions: test_component.QueryOptions!) throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.folder)
    var folder: test_component.StorageFolder! { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.contentschanged)
    var contentsChanged: Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.storage.search.istoragequeryresultbase.optionschanged)
    var optionsChanged: Event<TypedEventHandler<IStorageQueryResultBase?, Any?>> { get }
}

extension IStorageQueryResultBase {
    public func queryInterface(_ iid: test_component.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_Storage_Search.IStorageQueryResultBaseWrapper.IID:
                let wrapper = __ABI_Windows_Storage_Search.IStorageQueryResultBaseWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIStorageQueryResultBase = any IStorageQueryResultBase

extension test_component.CommonFileQuery {
    public static var defaultQuery : test_component.CommonFileQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery_DefaultQuery
    }
    public static var orderByName : test_component.CommonFileQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery_OrderByName
    }
    public static var orderByTitle : test_component.CommonFileQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery_OrderByTitle
    }
    public static var orderByMusicProperties : test_component.CommonFileQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery_OrderByMusicProperties
    }
    public static var orderBySearchRank : test_component.CommonFileQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery_OrderBySearchRank
    }
    public static var orderByDate : test_component.CommonFileQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFileQuery_OrderByDate
    }
}
extension test_component.CommonFileQuery: @retroactive Hashable, @retroactive Codable {}

extension test_component.CommonFolderQuery {
    public static var defaultQuery : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_DefaultQuery
    }
    public static var groupByYear : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByYear
    }
    public static var groupByMonth : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByMonth
    }
    public static var groupByArtist : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByArtist
    }
    public static var groupByAlbum : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByAlbum
    }
    public static var groupByAlbumArtist : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByAlbumArtist
    }
    public static var groupByComposer : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByComposer
    }
    public static var groupByGenre : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByGenre
    }
    public static var groupByPublishedYear : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByPublishedYear
    }
    public static var groupByRating : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByRating
    }
    public static var groupByTag : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByTag
    }
    public static var groupByAuthor : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByAuthor
    }
    public static var groupByType : test_component.CommonFolderQuery {
        __x_ABI_CWindows_CStorage_CSearch_CCommonFolderQuery_GroupByType
    }
}
extension test_component.CommonFolderQuery: @retroactive Hashable, @retroactive Codable {}

extension test_component.DateStackOption {
    public static var none : test_component.DateStackOption {
        __x_ABI_CWindows_CStorage_CSearch_CDateStackOption_None
    }
    public static var year : test_component.DateStackOption {
        __x_ABI_CWindows_CStorage_CSearch_CDateStackOption_Year
    }
    public static var month : test_component.DateStackOption {
        __x_ABI_CWindows_CStorage_CSearch_CDateStackOption_Month
    }
}
extension test_component.DateStackOption: @retroactive Hashable, @retroactive Codable {}

extension test_component.FolderDepth {
    public static var shallow : test_component.FolderDepth {
        __x_ABI_CWindows_CStorage_CSearch_CFolderDepth_Shallow
    }
    public static var deep : test_component.FolderDepth {
        __x_ABI_CWindows_CStorage_CSearch_CFolderDepth_Deep
    }
}
extension test_component.FolderDepth: @retroactive Hashable, @retroactive Codable {}

extension test_component.IndexedState {
    public static var unknown : test_component.IndexedState {
        __x_ABI_CWindows_CStorage_CSearch_CIndexedState_Unknown
    }
    public static var notIndexed : test_component.IndexedState {
        __x_ABI_CWindows_CStorage_CSearch_CIndexedState_NotIndexed
    }
    public static var partiallyIndexed : test_component.IndexedState {
        __x_ABI_CWindows_CStorage_CSearch_CIndexedState_PartiallyIndexed
    }
    public static var fullyIndexed : test_component.IndexedState {
        __x_ABI_CWindows_CStorage_CSearch_CIndexedState_FullyIndexed
    }
}
extension test_component.IndexedState: @retroactive Hashable, @retroactive Codable {}

extension test_component.IndexerOption {
    public static var useIndexerWhenAvailable : test_component.IndexerOption {
        __x_ABI_CWindows_CStorage_CSearch_CIndexerOption_UseIndexerWhenAvailable
    }
    public static var onlyUseIndexer : test_component.IndexerOption {
        __x_ABI_CWindows_CStorage_CSearch_CIndexerOption_OnlyUseIndexer
    }
    public static var doNotUseIndexer : test_component.IndexerOption {
        __x_ABI_CWindows_CStorage_CSearch_CIndexerOption_DoNotUseIndexer
    }
    public static var onlyUseIndexerAndOptimizeForIndexedProperties : test_component.IndexerOption {
        __x_ABI_CWindows_CStorage_CSearch_CIndexerOption_OnlyUseIndexerAndOptimizeForIndexedProperties
    }
}
extension test_component.IndexerOption: @retroactive Hashable, @retroactive Codable {}

