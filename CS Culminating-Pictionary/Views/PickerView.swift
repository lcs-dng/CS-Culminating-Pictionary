//
//  PickerView.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-28.
//

import SwiftUI

struct PickerView: View {
    
    // MARK: Stored property
    @State private var chosenTheme = "General"
    
    // MARK: Computed property
    var body: some View {
        VStack(spacing: 20) {
            
            Picker("Themes", selection: $chosenTheme) {
                Text("General").tag("General")
                Text("Location").tag("Location")
            }
            .pickerStyle(.wheel)
                        
        }
        .font(.title)
    }
    
}

#Preview {
    PickerView()
}
