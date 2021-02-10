//
//  Test_AppApp.swift
//  Shared
//
//  Created by iOS Team Member on 2/9/21.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct Test_AppApp: App {
    
    @State var didAppear = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    if !didAppear {
                        didAppear.toggle()
                        AppCenter.start(withAppSecret: "988c348f-13a0-4b22-9752-ea26def4807b", services:[
                          Analytics.self,
                          Crashes.self
                        ])
                    }
                }
        }
    }
}
