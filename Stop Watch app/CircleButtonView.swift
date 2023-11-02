//
//  CircleButtonView.swift
//  Stop Watch app
//
//  Created by Pablo Alvarado on 31/10/23.
//

import SwiftUI

struct CircleButtonView: View {
    
    // Mark: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    // Mark: Computed properties
    
    // return the button's user interface
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 100)
            
            // Second Layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            // Fourth layer
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView(buttonColor: .gray, label: "Reset", labelColor: .white)
}
