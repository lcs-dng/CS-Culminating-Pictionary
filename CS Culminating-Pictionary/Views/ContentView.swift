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
    
    @State var feedback = ""
    
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
                                    
            Text(feedback)
                .foregroundColor(feedback == "Correct!" ? .green : .red)
            
            Spacer()
            
            HStack {
                TextField("Enter your answer", text: $enteredAnswer)
                
                Button {
                    // Compare the answer to the correct answer
                    submitAnswer()
                } label: {
                    Text("Submit")
                }
            }
            .padding()
        }
    }
    
    func submitAnswer() {
        if enteredAnswer == "Dragon" {
            feedback = "Correct!"
        } else {
            feedback = "Try again."
        }
    }
    
}

#Preview {
    ContentView()
}
