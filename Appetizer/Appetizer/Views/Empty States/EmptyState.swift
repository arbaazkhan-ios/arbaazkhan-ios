//
//  EmptyState.swift
//  Appetizer
//
//  Created by Arbaaz on 17/09/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .padding()
               
                
                Text(message)
                    .bold()
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message. \nI am making it long to see how it looks.")
}
