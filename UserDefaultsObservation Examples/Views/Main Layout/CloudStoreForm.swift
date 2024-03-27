//
//  CloudStoreForm.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct CloudStoreForm: View {
    @State private var cloudStore = CloudStoreValues()
    
    var body: some View {
        ExampleFieldDisplayContainer(title: "Cloud Storage - State Retained",
                                     description: "This view uses NSUbuiquitousKeyValueStore to save values. The class is maintained in State for the entire life of the application.") {
            ExampleFieldInteraction(exampleProvider: $cloudStore)
        }
    }
}

#Preview {
    CloudStoreForm()
}
