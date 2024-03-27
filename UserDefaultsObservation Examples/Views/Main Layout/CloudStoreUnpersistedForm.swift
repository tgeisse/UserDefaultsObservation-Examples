//
//  CloudStoreUnpersistedForm.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct CloudStoreUnpersistedForm: View {
    @State private var cloudStore = CloudStoreSecondaryKeyValues()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ExampleFieldDisplayContainer(title: "Cloud Store - State Unpersisted",
                                     description: "In this example, the CloudStore class is not retained in State between View rendering. This is to demonstrate UserDefaultsObservation's caching ability for CloudStore properties.") {
            
            VStack {
                ExampleFieldInteraction(exampleProvider: $cloudStore)
                
                Button("Close") { dismiss() }
                .buttonStyle(BorderedProminentButtonStyle())
            }
        }
        .padding()
    }
}

#Preview {
    CloudStoreUnpersistedForm()
}
