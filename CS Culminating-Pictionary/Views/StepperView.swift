//
//  StepperView.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-29.
//

import SwiftUI

struct StepperView: View {
    
    // MARK: Stored properties
    @State private var value = 1
    
    var displayText: String
    
    // MARK: Computed properties
    var body: some View {
        
        Stepper(value: $value) {
            Text("\(displayText) \(value)")
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    StepperView(displayText: "No. of Rounds")
}
