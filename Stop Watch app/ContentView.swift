//
//  ContentView.swift
//  Stop Watch app
//
//  Created by Pablo Alvarado on 31/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            //First layer (background)
            Color.black
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create circular button
                HStack {
                    CircleButtonView(buttonColor:Color("Dark Grey"),
                                     label: "Reset",
                                     labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"),
                                     label: "Start",
                                     labelColor: .green)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        TabView{
            
            Text("World Clock")
                .tabItem {
                  Image(systemName: "globe")
                    Text("World Clock")
                }
            
            Text("Alarm")
                .tabItem {
                  Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            ContentView()
                .tabItem {
                  Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
            
            Text("Timer")
                .tabItem {
                  Image(systemName: "timer")
                    Text("Timer")
                }
            
        }
        // change accent color for the currently active tab item
        .accentColor(.orange)
        // Ensure tab items that are not active remain visible
        .preferredColorScheme(.dark)
        
    }
}
        
        
    

#Preview {
    ContentView()
}
