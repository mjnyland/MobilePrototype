//
//  RainierApp.swift
//  Rainier
//
//  Created by Michael Nyland on 5/22/24.
//

import SwiftUI

@main
struct RainierApp: App {
    
    @State private var settings: TextStyleSettings = TextStyleSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(settings)
        }
    }
}

