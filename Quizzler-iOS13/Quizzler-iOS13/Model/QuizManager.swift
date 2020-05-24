//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Jacob Hallman on 2020-05-23.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct QuizManager {
    var totalQuestions: Int = 0
    var currentQuestionIndex: Int = 0
    var score: Int = 0
    
    var trueFalseQuestions: [Question] = [
        Question("A slug's blood is green.", true),
        Question("Approximately one quarter of human bones are in the feet.", true),
        Question("The total surface area of two human lungs is approximately 70 square metres.", true),
        Question("In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", true),
        Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", false),
        Question("It is illegal to pee in the Ocean in Portugal.", true),
        Question("You can lead a cow down stairs but not up stairs.", false),
        Question("Google was originally called 'Backrub'.", true),
        Question("Buzz Aldrin's mother's maiden name was 'Moon'.", true),
        Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", false),
        Question("No piece of square dry paper can be folded in half more than 7 times.", false),
        Question("Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", true)
    ]
    
    var multipleChoiceQuestions: [Question] = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var allQuestions: [Question]
    
    init() {
        allQuestions = trueFalseQuestions + multipleChoiceQuestions
        totalQuestions = trueFalseQuestions.count
        currentQuestionIndex = getRandomIndex(questionArray: trueFalseQuestions)
    }
    
    
    mutating func addTrueFalseQuestion(question: String, answer: Bool) {
        trueFalseQuestions.append(Question(question, answer))
    }
    
    func getRandomIndex(questionArray: [Question]) -> Int {
        return questionArray.indices.randomElement()!
    }
    
    func getCurrentQuestion() -> Question {
        return trueFalseQuestions[currentQuestionIndex]
    }
    
    mutating func removeCurrentQuestion() {
        trueFalseQuestions.remove(at: currentQuestionIndex)
    }
    
    func getProgress() -> Float {
        return Float(totalQuestions - trueFalseQuestions.count) / Float(totalQuestions)
    }
    
    func getScore() -> Int {
        return score
    }
    
    // Return true if there are questions remaining or false if there are no questions left
    mutating func generateNewQuestion() -> Bool {
        if (trueFalseQuestions.count > 0) {
            currentQuestionIndex = getRandomIndex(questionArray: trueFalseQuestions)
            return true
        }
        return false
    }
    
    mutating func checkAnswer(answer: String) -> Bool {
        if ((answer as NSString).boolValue == trueFalseQuestions[currentQuestionIndex].answer) {
            score += 1
            return true
        } else {
            return false
            
        }
    }
}

// As dictionary
//class Questions<K, V>{
//}
