//
//  ExampleFieldInteraction.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/25/24.
//

import SwiftUI

struct ExampleFieldInteraction<ExampleProvider: ContainsExampleFields>: View {
    @Binding var exampleProvider: ExampleProvider
    
    var body: some View {
        VStack(spacing: 16) {
            InterfaceNumber(theNumber: $exampleProvider.aNumber)
                .frame(maxWidth: 200)
            
            InterfaceString(theString: $exampleProvider.aString)
                .frame(maxWidth: 300)
            
            InterfaceRawRepresentable(theRepresentable: $exampleProvider.aRawRepresentable)
                .frame(maxWidth: 300)
        }
    }
}


#Preview {
    ExampleFieldInteraction(exampleProvider: .constant(UserDefaultValues()))
}
