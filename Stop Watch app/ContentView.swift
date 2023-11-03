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
                
                Spacer()
                
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
                
                //List
                List{
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }
                //Set the amount of vertical height we want this ist to take up
                .frame(height: 300)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        TabView(selection: Binding.constant(3)){
            
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
        
        
    

#Preview {
    ContentView()
}
