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
        AppCenter.start(withAppSecret: "732ac656-1cb4-4262-babf-2b1f523e8fe1", services:[
            Crashes.self, Analytics.self
        ])
    }
}
