//
//  GitHubDemoApp.swift
//  GitHubDemo
//
//  Created by Nileshkumar M. Prajapati on 2023/03/26.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct GitHubDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    launchMSAppCenter()
                }
        }
    }
    
    func launchMSAppCenter() {
        AppCenter.start(withAppSecret: "adb3b1f3-e685-4949-8a0e-6921ae78d9b7", services:[
            Crashes.self, Analytics.self
        ])
    }
}
