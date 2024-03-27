//
//  ContainsExampleFields.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/25/24.
//

import Foundation

protocol ContainsExampleFields {
    var aNumber: Int { get set }
    var aString: String { get set }
    var aRawRepresentable: BackgroundColor { get set }
}
