//
//  SwiftUI_TutorialApp.swift
//  Shared
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import SwiftUI

@main
struct SwiftUI_TutorialApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
