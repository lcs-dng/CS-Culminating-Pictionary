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
            
            Stepper(value: $viewModel.rounds, in: 1...5, step: 2) {
                
                Text("rounds: \(viewModel.rounds)")

            }
            .padding()
            
            Stepper(value: $viewModel.time, in: 10...50, step: 5) {
                
                Text("time limit: \(viewModel.time) seconds")
                
            }
            .padding()
            
            NavigationLink("Start", destination: PickerView())
        }
        
    }
}

#Preview {
    LandingView()
}
