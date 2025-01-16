//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Bibie Hadi Kusuma on 13/01/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
