//
//  APOrderButton.swift
//  Appetizer
//
//  Created by Arbaaz on 16/09/24.
//

import SwiftUI

struct APOrderButton: View {
    
    let title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 350, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
            .shadow(radius: 50)
    }
}

#Preview {
    APButton(title: "Test Title")
}
