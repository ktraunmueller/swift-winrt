// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
import Ctest_component

private var IID___x_ABI_C__FIIterable_1_T: IID {
    IID(Data1: 0xFAA585EA, Data2: 0x6214, Data3: 0x4217, Data4: ( 0xAF,0xDA,0x7F,0x46,0xDE,0x58,0x69,0xB3 ))// FAA585EA-6214-4217-AFDA-7F46DE5869B3
}

private var IID___x_ABI_C__FIIterator_1_T: IID {
    IID(Data1: 0x6A79E863, Data2: 0x4300, Data3: 0x459A, Data4: ( 0x99,0x66,0xCB,0xB6,0x60,0x96,0x3E,0xE1 ))// 6A79E863-4300-459A-9966-CBB660963EE1
}

private var IID___x_ABI_C__FIKeyValuePair_2_K_V: IID {
    IID(Data1: 0x02B51929, Data2: 0xC1C4, Data3: 0x4A7E, Data4: ( 0x89,0x40,0x03,0x12,0xB5,0xC1,0x85,0x00 ))// 02B51929-C1C4-4A7E-8940-0312B5C18500
}

private var IID___x_ABI_C__FIMapChangedEventArgs_1_K: IID {
    IID(Data1: 0x9939F4DF, Data2: 0x050A, Data3: 0x4C0F, Data4: ( 0xAA,0x60,0x77,0x07,0x5F,0x9C,0x47,0x77 ))// 9939F4DF-050A-4C0F-AA60-77075F9C4777
}

private var IID___x_ABI_C__FIMapView_2_K_V: IID {
    IID(Data1: 0xE480CE40, Data2: 0xA338, Data3: 0x4ADA, Data4: ( 0xAD,0xCF,0x27,0x22,0x72,0xE4,0x8C,0xB9 ))// E480CE40-A338-4ADA-ADCF-272272E48CB9
}

private var IID___x_ABI_C__FIMap_2_K_V: IID {
    IID(Data1: 0x3C2925FE, Data2: 0x8519, Data3: 0x45C1, Data4: ( 0xAA,0x79,0x19,0x7B,0x67,0x18,0xC1,0xC1 ))// 3C2925FE-8519-45C1-AA79-197B6718C1C1
}

private var IID___x_ABI_C__FIObservableMap_2_K_V: IID {
    IID(Data1: 0x65DF2BF5, Data2: 0xBF39, Data3: 0x41B5, Data4: ( 0xAE,0xBC,0x5A,0x9D,0x86,0x5E,0x47,0x2B ))// 65DF2BF5-BF39-41B5-AEBC-5A9D865E472B
}

private var IID___x_ABI_C__FIObservableVector_1_T: IID {
    IID(Data1: 0x5917EB53, Data2: 0x50B4, Data3: 0x4A0D, Data4: ( 0xB3,0x09,0x65,0x86,0x2B,0x3F,0x1D,0xBC ))// 5917EB53-50B4-4A0D-B309-65862B3F1DBC
}

private var IID___x_ABI_CWindows_CFoundation_CCollections_CIPropertySet: IID {
    IID(Data1: 0x8A43ED9F, Data2: 0xF4E6, Data3: 0x4421, Data4: ( 0xAC,0xF9,0x1D,0xAB,0x29,0x86,0x82,0x0C ))// 8A43ED9F-F4E6-4421-ACF9-1DAB2986820C
}

private var IID___x_ABI_CWindows_CFoundation_CCollections_CIVectorChangedEventArgs: IID {
    IID(Data1: 0x575933DF, Data2: 0x34FE, Data3: 0x4480, Data4: ( 0xAF,0x15,0x07,0x69,0x1F,0x3D,0x5D,0x9B ))// 575933DF-34FE-4480-AF15-07691F3D5D9B
}

private var IID___x_ABI_C__FIVectorView_1_T: IID {
    IID(Data1: 0xBBE1FA4C, Data2: 0xB0E3, Data3: 0x4583, Data4: ( 0xBA,0xEF,0x1F,0x1B,0x2E,0x48,0x3E,0x56 ))// BBE1FA4C-B0E3-4583-BAEF-1F1B2E483E56
}

private var IID___x_ABI_C__FIVector_1_T: IID {
    IID(Data1: 0x913337E9, Data2: 0x11A1, Data3: 0x4345, Data4: ( 0xA3,0xA2,0x4E,0x7F,0x95,0x6E,0x22,0x2D ))// 913337E9-11A1-4345-A3A2-4E7F956E222D
}

private var IID___x_ABI_C__FMapChangedEventHandler_2_K_V: IID {
    IID(Data1: 0x179517F3, Data2: 0x94EE, Data3: 0x41F8, Data4: ( 0xBD,0xDC,0x76,0x8A,0x89,0x55,0x44,0xF3 ))// 179517F3-94EE-41F8-BDDC-768A895544F3
}

private var IID___x_ABI_C__FVectorChangedEventHandler_1_T: IID {
    IID(Data1: 0x0C051752, Data2: 0x9FBF, Data3: 0x4C70, Data4: ( 0xAA,0x0C,0x0E,0x4C,0x82,0xD9,0xA7,0x61 ))// 0C051752-9FBF-4C70-AA0C-0E4C82D9A761
}

public enum __ABI_Windows_Foundation_Collections {
    open class IPropertySet: test_component.IInspectable {
        override public class var IID: IID { IID___x_ABI_CWindows_CFoundation_CCollections_CIPropertySet }

    }

    internal static var IPropertySetVTable: __x_ABI_CWindows_CFoundation_CCollections_CIPropertySetVtbl = .init(
        QueryInterface: {
            guard let pUnk = $0, let riid = $1, let ppvObject = $2 else { return E_INVALIDARG }
            ppvObject.pointee = nil

            switch riid.pointee {
                case IUnknown.IID, IInspectable.IID, ISwiftImplemented.IID, IAgileObject.IID, IPropertySetWrapper.IID:
                    _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
                    ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
                    return S_OK
                default:
                    guard let instance = IPropertySetWrapper.tryUnwrapFrom(raw: pUnk),
                          let iUnknownRef = instance.queryInterface(riid.pointee) else { return failWith(err: E_NOINTERFACE )}
                    ppvObject.pointee = UnsafeMutableRawPointer(iUnknownRef.ref)
                    return S_OK

            }
        },

        AddRef: {
             guard let wrapper = IPropertySetWrapper.fromRaw($0) else { return 1 }
             _ = wrapper.retain()
             return ULONG(_getRetainCount(wrapper.takeUnretainedValue()))
        },

        Release: {
            guard let wrapper = IPropertySetWrapper.fromRaw($0) else { return 1 }
            return ULONG(_getRetainCount(wrapper.takeRetainedValue()))
        },

        GetIids: {
            let size = MemoryLayout<IID>.size
            let iids = CoTaskMemAlloc(UInt64(size) * 6).assumingMemoryBound(to: IID.self)
            iids[0] = IUnknown.IID
            iids[1] = IInspectable.IID
            iids[2] = __ABI_Windows_Foundation_Collections.IPropertySetWrapper.IID
            iids[3] = test_component.__x_ABI_C__FIObservableMap_2_HSTRING_IInspectableWrapper.IID
            iids[4] = test_component.__x_ABI_C__FIMap_2_HSTRING_IInspectableWrapper.IID
            iids[5] = test_component.__x_ABI_C__FIIterable_1___x_ABI_C__FIKeyValuePair_2_HSTRING_IInspectableWrapper.IID
            $1!.pointee = 6
            $2!.pointee = iids
            return S_OK
        },

        GetRuntimeClassName: {
            _ = $0
            let hstring = try! HString("Windows.Foundation.Collections.IPropertySet").detach()
            $1!.pointee = hstring
            return S_OK
        },

        GetTrustLevel: {
            _ = $0
            $1!.pointee = TrustLevel(rawValue: 0)
            return S_OK
        }
    )

    public typealias IPropertySetWrapper = InterfaceWrapperBase<__IMPL_Windows_Foundation_Collections.IPropertySetImpl>
    open class IVectorChangedEventArgs: test_component.IInspectable {
        override public class var IID: IID { IID___x_ABI_CWindows_CFoundation_CCollections_CIVectorChangedEventArgs }

        open func get_CollectionChangeImpl() throws -> __x_ABI_CWindows_CFoundation_CCollections_CCollectionChange {
            var value: __x_ABI_CWindows_CFoundation_CCollections_CCollectionChange = .init(0)
            _ = try perform(as: __x_ABI_CWindows_CFoundation_CCollections_CIVectorChangedEventArgs.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_CollectionChange(pThis, &value))
            }
            return value
        }

        open func get_IndexImpl() throws -> UINT32 {
            var value: UINT32 = 0
            _ = try perform(as: __x_ABI_CWindows_CFoundation_CCollections_CIVectorChangedEventArgs.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_Index(pThis, &value))
            }
            return value
        }

    }

    internal static var IVectorChangedEventArgsVTable: __x_ABI_CWindows_CFoundation_CCollections_CIVectorChangedEventArgsVtbl = .init(
        QueryInterface: {
            guard let pUnk = $0, let riid = $1, let ppvObject = $2 else { return E_INVALIDARG }
            ppvObject.pointee = nil

            switch riid.pointee {
                case IUnknown.IID, IInspectable.IID, ISwiftImplemented.IID, IAgileObject.IID, IVectorChangedEventArgsWrapper.IID:
                    _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
                    ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
                    return S_OK
                default:
                    guard let instance = IVectorChangedEventArgsWrapper.tryUnwrapFrom(raw: pUnk),
                          let iUnknownRef = instance.queryInterface(riid.pointee) else { return failWith(err: E_NOINTERFACE )}
                    ppvObject.pointee = UnsafeMutableRawPointer(iUnknownRef.ref)
                    return S_OK

            }
        },

        AddRef: {
             guard let wrapper = IVectorChangedEventArgsWrapper.fromRaw($0) else { return 1 }
             _ = wrapper.retain()
             return ULONG(_getRetainCount(wrapper.takeUnretainedValue()))
        },

        Release: {
            guard let wrapper = IVectorChangedEventArgsWrapper.fromRaw($0) else { return 1 }
            return ULONG(_getRetainCount(wrapper.takeRetainedValue()))
        },

        GetIids: {
            let size = MemoryLayout<IID>.size
            let iids = CoTaskMemAlloc(UInt64(size) * 3).assumingMemoryBound(to: IID.self)
            iids[0] = IUnknown.IID
            iids[1] = IInspectable.IID
            iids[2] = __ABI_Windows_Foundation_Collections.IVectorChangedEventArgsWrapper.IID
            $1!.pointee = 3
            $2!.pointee = iids
            return S_OK
        },

        GetRuntimeClassName: {
            _ = $0
            let hstring = try! HString("Windows.Foundation.Collections.IVectorChangedEventArgs").detach()
            $1!.pointee = hstring
            return S_OK
        },

        GetTrustLevel: {
            _ = $0
            $1!.pointee = TrustLevel(rawValue: 0)
            return S_OK
        },

        get_CollectionChange: {
            guard let __unwrapped__instance = IVectorChangedEventArgsWrapper.tryUnwrapFrom(raw: $0) else { return E_INVALIDARG }
            let value = __unwrapped__instance.collectionChange
            $1?.initialize(to: value)
            return S_OK
        },

        get_Index: {
            guard let __unwrapped__instance = IVectorChangedEventArgsWrapper.tryUnwrapFrom(raw: $0) else { return E_INVALIDARG }
            let value = __unwrapped__instance.index
            $1?.initialize(to: value)
            return S_OK
        }
    )

    public typealias IVectorChangedEventArgsWrapper = InterfaceWrapperBase<__IMPL_Windows_Foundation_Collections.IVectorChangedEventArgsImpl>
}
