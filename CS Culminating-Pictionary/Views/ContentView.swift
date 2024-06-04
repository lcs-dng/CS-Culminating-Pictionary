//
//  ContentView.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-30.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var enteredAnswer = ""
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Text("Guess the Picture!")
                .font(
                    .system(size: 30)
                    .bold()
                    .italic()
                )
            
            Spacer()
            
            Image("abstractDragon")
                .resizable()
                .scaledToFit()
                .border(.black)
                .padding()
            
            if enteredAnswer == "Dragon" {
                Image(systemName: "hand.thumbsup.fill")
            } else {
                Image(systemName: "hand.thumbsdown.fill")
            }
            
            Spacer()
            
            TextField("Enter your answer", text: $enteredAnswer)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
