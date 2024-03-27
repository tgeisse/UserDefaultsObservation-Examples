//
//  UserDefaultForm.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct UserDefaultForm: View {
    @State private var userDefault = UserDefaultValues()
    
    var body: some View {
        ExampleFieldDisplayContainer(title: "User Defaults",
                                     description: "These values are locally cached in User Defaults.") {
            ExampleFieldInteraction(exampleProvider: $userDefault)
        }
    }
}

#Preview {
    UserDefaultForm()
}
