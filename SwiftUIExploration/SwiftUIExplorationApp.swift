//
//  SwiftUIExplorationApp.swift
//  SwiftUIExploration
//
//  Created by Merlin Zhao on 1/24/21.
//

import SwiftUI

@main
struct SwiftUIExplorationApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
