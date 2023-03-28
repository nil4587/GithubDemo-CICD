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
        AppCenter.start(withAppSecret: "940b8937-793d-4bad-bcac-81fdb14a1a55", services:[
            Crashes.self, Analytics.self
        ])
    }
}
