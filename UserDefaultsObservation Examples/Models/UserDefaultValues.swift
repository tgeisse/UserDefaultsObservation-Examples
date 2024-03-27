//
//  UserDefaultValues.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/25/24.
//

import Foundation
import UserDefaultsObservation

@ObservableUserDefaults
final class UserDefaultValues: ContainsExampleFields {
    var aNumber = 0
    var aString = "Hello World"
    var aRawRepresentable: BackgroundColor = .default
}
