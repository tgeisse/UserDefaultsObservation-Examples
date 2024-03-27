//
//  ExampleFieldDisplayContainer.swift
//  LocalUkvsTesting
//
//  Created by Taylor Geisse on 3/26/24.
//

import SwiftUI

struct ExampleFieldDisplayContainer<Content: View>: View {
    let title: String
    let description: String
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title3)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(description)
                .font(.caption)
                .foregroundStyle(.black.opacity(0.75))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            content()
                .padding([.top, .horizontal])
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.foreground)
        )
    }
}

#Preview {
    ExampleFieldDisplayContainer(title: "User Defaults",
                                 description: "Example description") {
        ExampleFieldInteraction(exampleProvider: .constant(UserDefaultValues()))
    }
}
