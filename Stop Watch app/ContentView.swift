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
                
                Spacer()
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
                    
                    Group{
                        ListItemView(runNumber: "Lap 5", runTime: "00:00.98", highlight: .white)
                        
                        ListItemView(runNumber: "Lap 4", runTime: "00:04.08", highlight: .red)
                        
                        ListItemView(runNumber: "Lap 3", runTime: "00:00.96", highlight: .green)
                        
                        ListItemView(runNumber: "Lap 2", runTime: "00:02.76", highlight: .white)
                        
                        ListItemView(runNumber: "Lap 1", runTime: "00:01.16", highlight: .white)
                    }
                    
                    .listRowSeparatorTint(.gray)
                    //Remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                }
                //Adjust list style to match design
                .listStyle(.plain)
                .frame(height: 300)
                .scrollContentBackground(.hidden)
                
                
            }
            .padding()
            
            
        }

    }
}


#Preview {
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
