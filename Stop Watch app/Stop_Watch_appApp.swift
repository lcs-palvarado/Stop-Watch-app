//
//  Stop_Watch_appApp.swift
//  Stop Watch app
//
//  Created by Pablo Alvarado on 31/10/23.
//

import SwiftUI

@main
struct Stop_Watch_appApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                Text("World Clock")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
                    .tag(1)
                
                Text("Alarm")
                    .tabItem {
                        Image(systemName: "alarm.fill")
                        Text("Alarm")
                    }
                    .tag(2)
                ContentView()
                    .tabItem {
                        Image(systemName: "stopwatch.fill")
                        Text("Stopwatch")
                    }
                    .tag(3)
                
                Text("Timer")
                    .tabItem {
                        Image(systemName: "timer")
                        Text("Timer")
                    }
                    .tag(4)
                
            }
            // change accent color for the currently active tab item
            .accentColor(.orange)
            // Ensure tab items that are not active remain visible
            .preferredColorScheme(.dark)
            
        }
    }
    
    
}
