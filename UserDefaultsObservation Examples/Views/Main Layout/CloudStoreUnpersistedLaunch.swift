//
//  CloudStoreUnpersistedLaunch.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct CloudStoreUnpersistedLaunch: View {
    @State private var displayForm = false
    
    var body: some View {
        ExampleFieldDisplayContainer(title: "Cloud Store - State Unpersisted",
                                     description: "In this example, the CloudStore class is not retained in State between View rendering. This is to demonstrate UserDefaultsObservation's caching ability for CloudStore properties.") {
            Button("Launch Form") {
                displayForm.toggle()
            }
            .sheet(isPresented: $displayForm) { CloudStoreUnpersistedForm() }
        }
    }
}

#Preview {
    CloudStoreUnpersistedLaunch()
}
