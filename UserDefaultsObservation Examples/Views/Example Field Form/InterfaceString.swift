//
//  InterfaceString.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct InterfaceString: View {
    @Binding var theString: String
    
    var body: some View {
        TextField("", text: $theString)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    InterfaceString(theString: .constant("Hello World"))
}
