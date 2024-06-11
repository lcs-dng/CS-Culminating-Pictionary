//
//  ContentView.swift
//  CS Culminating-Pictionary
//
//  Created by Dexter Ng on 2024-05-30.
//

import SwiftUI

struct GuessingView: View {
    
    // MARK: Stored properties
    
    // Keep track of what picture is being guessed at
    @State var currentPicture = 0
    
    // What is their guess
    @State var enteredAnswer = ""
    
    // Are they correct?
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
            
            Image(possiblePictures[currentPicture].name)
                .resizable()
                .scaledToFit()
                .border(.black)
                .padding()
                                    
            Text(feedback)
                .foregroundColor(feedback == "Correct!" ? .green : .red)
            
            Button {
                nextQuestion()
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 50, height: 30)
                        .foregroundColor(.black)
                        .cornerRadius(24)
                    
                    Text("Next")
                        .accentColor(.orange)
                        .bold()
                }
            }
            
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
        if enteredAnswer == possiblePictures[currentPicture].description {
            feedback = "Correct!"
        } else {
            feedback = "Try again."
        }
    }
    
    func nextQuestion() {
        currentPicture += 1
    }
    
}

#Preview {
    GuessingView()
}
