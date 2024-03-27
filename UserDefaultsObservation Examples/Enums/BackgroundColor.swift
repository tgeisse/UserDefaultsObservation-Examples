//
//  BackgroundColor.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/25/24.
//

import Foundation
import SwiftUI

enum BackgroundColor: String, CaseIterable {
    case red
    case blue
    case green
    case yellow
    case `default`
    case white
    case black
    
    var color: Color {
        switch self {
        case .red: .red
        case .blue: .blue
        case .green: .green
        case .yellow: .yellow
        case .default: .gray
        case .white: .white
        case .black: .black
        }
    }
    
    var displayName: String {
        rawValue.capitalized
    }
}
