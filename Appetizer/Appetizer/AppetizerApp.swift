//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Arbaaz on 12/09/24.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
