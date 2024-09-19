//
//  CustomModifier.swift
//  Appetizer
//
//  Created by Arbaaz on 17/09/24.
//

import SwiftUI
  
struct StandardButtonStyle: ViewModifier {
    
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)

    }
}
