//
//  ContentView.swift
//  UserDefaultsObservation Examples
//
//  Created by Taylor Geisse on 3/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            UserDefaultForm()
            CloudStoreForm()
            CloudStoreUnpersistedLaunch()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
