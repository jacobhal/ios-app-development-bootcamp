//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jacob Hallman on 2020-05-24.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    // Every question has a question
    var question: String
    
    // True/false questions
    var answer: Bool?
    
    // Multiple choice questions
    var possibleAnswers: [String]?
    var correctAnswer: String?
    
    init(_ question: String, _ answer: Bool) {
        self.question = question
        self.answer = answer
    }
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.possibleAnswers = a
        self.correctAnswer = correctAnswer
    }
}
