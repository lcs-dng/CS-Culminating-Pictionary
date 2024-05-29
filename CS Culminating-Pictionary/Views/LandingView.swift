//
//  LandingView.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-28.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        
        VStack {
            Text("Guess the Abstracts :)")
                .font(
                    .system(size: 30)
                    .bold()
                    .italic()
                )
            
            PickerView()
            
            StepperView(displayText: "No. of Rounds:")
            
            StepperView(displayText: "Time Limit:")
        }
        
    }
}

#Preview {
    LandingView()
}
