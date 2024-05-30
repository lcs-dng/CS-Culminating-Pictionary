//
//  LandingView.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-28.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored propeties
    @State var viewModel = GameViewModel()
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Text("Guess the Abstracts :)")
                .font(
                    .system(size: 30)
                    .bold()
                    .italic()
                )
            
            PickerView()
            
            Stepper(value: $viewModel.rounds) {
                
                Text("rounds: \(viewModel.rounds)")

            }
            .padding()
            
            Stepper(value: $viewModel.time) {
                
                Text("time limit: \(viewModel.time)")
                
            }
            .padding()
            
            NavigationLink("Start", destination: PickerView())
        }
        
    }
}

#Preview {
    LandingView()
}
