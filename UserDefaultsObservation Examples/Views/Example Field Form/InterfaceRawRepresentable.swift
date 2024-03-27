//
//  InterfaceRawRepresentable.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct InterfaceRawRepresentable: View {
    @Binding var theRepresentable: BackgroundColor
    
    var body: some View {
        HStack {
            Picker("Square's Color", selection: $theRepresentable) {
                ForEach(BackgroundColor.allCases, id: \.self) {
                    Text($0.displayName)
                }
            }
            
            Rectangle()
                .fill(theRepresentable.color)
                .border(.foreground)
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 35)
        }
    }
}

#Preview {
    InterfaceRawRepresentable(theRepresentable: .constant(BackgroundColor.default))
}
