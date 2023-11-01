//
//  CircleButtonView.swift
//  Stop Watch app
//
//  Created by Pablo Alvarado on 31/10/23.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(.gray)
            .frame(width: 100)
            
            // Second Layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(.gray)
                .frame(width: 89)
            
            // Fourth layer
            Text("Reset")
                .foregroundColor(.white)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView()
}
