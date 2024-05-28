//
//  PickerTest.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-28.
//

import SwiftUI

struct Picker_Wheel: View {
    
    // MARK: Stored property
    @State private var yourName = "Mark"
    
    // MARK: Computed property
    var body: some View {
        VStack(spacing: 20) {
            
            Picker("Name", selection: $yourName) {
                Text("Paul").tag("1")
                Text("Chris").tag("2")
                Text("Mark").tag("3")
                Text("Scott").tag("4")
                Text("Meng").tag("5")
            }
            .pickerStyle(.wheel)
            
            Text("your name: \(yourName)")
        }
        .font(.title)
    }
}

#Preview {
    Picker_Wheel()
}
