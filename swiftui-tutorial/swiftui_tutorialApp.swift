//
//  swiftui_tutorialApp.swift
//  swiftui-tutorial
//
//  Created by lil-shimon on 2022/03/13.
//

import SwiftUI

@main
struct swiftui_tutorialApp: App {

    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
