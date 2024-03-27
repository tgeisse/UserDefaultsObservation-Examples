//
//  CloudStoreSecondaryKeyValues.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/25/24.
//

import Foundation
import UserDefaultsObservation

@ObservableUserDefaults
final class CloudStoreSecondaryKeyValues: ContainsExampleFields {
    @CloudProperty(key: "aNumber_second",
                   onStoreServerChange: .cloudValue,
                   onInitialSyncChange: .cloudValue,
                   onAccountChange: .cachedValue)
    var aNumber: Int = 0
    
    @CloudProperty(key: "aString_second",
                   onStoreServerChange: .cloudValue,
                   onInitialSyncChange: .cloudValue,
                   onAccountChange: .cachedValue)
    var aString: String = "Hello World"
    
    
    @CloudProperty(key: "aRawRepresentable_second",
                   onStoreServerChange: .cloudValue,
                   onInitialSyncChange: .cloudValue,
                   onAccountChange: .cachedValue)
    var aRawRepresentable: BackgroundColor = .default
}

