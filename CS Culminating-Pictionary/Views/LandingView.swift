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
            
            PickerView()
        }
        
    }
}

#Preview {
    LandingView()
}
