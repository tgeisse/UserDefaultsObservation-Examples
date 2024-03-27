//
//  InterfaceNumber.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct InterfaceNumber: View {
    @Binding var theNumber: Int
    
    var body: some View {
        HStack(alignment: .center) {
            Button {
                theNumber -= 1
            } label: {
                Image(systemName: "minus")
                    .frame(width: 15, height: 15)
            }
            
            Spacer()
            
            Text("\(theNumber)")
            
            Spacer()
            
            Button {
                theNumber += 1
            } label: {
                Image(systemName: "plus")
                    .frame(width: 15, height: 15)
            }
        }
        .buttonStyle(BorderedButtonStyle())
    }
}

#Preview {
    InterfaceNumber(theNumber: .constant(0))
}
