//
//  ListItemView.swift
//  Stop Watch app
//
//  Created by Pablo Alvarado on 04/11/23.
//

import SwiftUI

struct ListItemView: View {
    
    let runNumber: String
    let runTime: String
    let highlight: Color
    
    var body: some View {
        HStack{
            Text(runNumber)
            Spacer()
            Text(runTime)
        }
        .padding(.horizontal, 1)
        .foregroundColor(highlight)
        
    }
}

#Preview {
    List {
        ListItemView(runNumber: "Lap 5", runTime: "00:00.98", highlight: .black)
        ListItemView(runNumber: "Lap 6", runTime: "00:00.98", highlight: .black)
        ListItemView(runNumber: "Lap 7", runTime: "00:00.98", highlight: .black)
    }
    .listStyle(.plain)
}
