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
CircleButtonView()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
