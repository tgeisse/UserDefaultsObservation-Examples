//
//  CloudStoreValues.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/25/24.
//

import Foundation
import UserDefaultsObservation

@ObservableUserDefaults
final class CloudStoreValues: ContainsExampleFields {
    @CloudProperty(key: "aNumber",
                   onStoreServerChange: .cloudValue,
                   onInitialSyncChange: .cloudValue,
                   onAccountChange: .cachedValue)
    var aNumber: Int = 0
    
    @CloudProperty(key: "aString",
                   onStoreServerChange: .cloudValue,
                   onInitialSyncChange: .cloudValue,
                   onAccountChange: .cachedValue)
    var aString: String = "Hello World"
    
    @CloudProperty(key: "aRawRepresentable",
                   onStoreServerChange: .cloudValue,
                   onInitialSyncChange: .cloudValue,
                   onAccountChange: .cachedValue)
    var aRawRepresentable: BackgroundColor = .default
}
