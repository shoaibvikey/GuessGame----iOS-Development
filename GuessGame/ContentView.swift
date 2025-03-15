//
//  ContentView.swift
//  GuessGame
//
//  Created by Shoaib Akhtar on 14/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var correctAnswer = 0
    @State var score = 0
    @State var gameTitle = "?"
    @State var gameSubtitle = "Guess the Animal"
    
    var body: some View {
        VStack {
            Text("Welcome to Guess Game!")
                .font(.headline)
            VStack {
                Text(gameTitle)
                    .font(.system(size: 70, weight: .bold, design: .default))
                    .padding(.bottom)
                Text(gameSubtitle)
                    .font(.system(size: 30, weight: .bold, design: .default))
            }
            .frame(height: 300)
            
            HStack {
                Spacer()
                Text("Score \(score)")
                    .font(.headline)
            }
            
            Button(action: {
                checkAnswer(answer: 0)
                print("Dog Button Pressed")
            }) {
                HStack {
                    Text("🐶")
                    Text("Dog")
                }
                    .frame(width: 370, height: 50)
                    .bold(true)
                    .foregroundStyle(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            
            Button(action: {
                checkAnswer(answer: 1)
                print("Cat Button Pressed")
            }) {
                HStack {
                    Text("🐱")
                    Text("Cat")
                }
                .frame(width: 370, height: 50)
                .bold(true)
                .foregroundStyle(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
            }
            
            
            Button(action: {
                checkAnswer(answer: 2)
                print("Fox Button Pressed")
            }) {
                HStack {
                    Text("🦊")
                    Text("Fox")
                }
                .frame(width: 370, height: 50)
                .bold(true)
                .foregroundStyle(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            
            Spacer()
            Text("Made with SwiftUI By Shoaib Akhtar ❤️")
                .font(.caption)
                
        }
        .padding()
    }
    
    func checkAnswer(answer : Int){
        if answer == correctAnswer {
            score += 1
            gameTitle = "Correct! 🎉"
        }else{
            if score > 0 {
                score -= 1
            }
            gameTitle = "Wrong! 😕"
        }
        if correctAnswer == 0 {
            gameSubtitle = "Correct Answer is Dog 🐶"
        }
        else if correctAnswer == 1 {
            gameSubtitle = "Correct Answer is Cat 🐱"
        }
        else if correctAnswer == 2 {
            gameSubtitle = "Correct Answer is Fox 🦊"
        }
        randomCorrectAnswer()
    }
    func randomCorrectAnswer(){
        let randomAnswer = Int.random(in: 0..<3)
        correctAnswer = randomAnswer
    }
}

#Preview {
    ContentView()
}
