//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var quizManager: QuizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trueButton.layer.cornerRadius = trueButton.frame.size.height / 5
        falseButton.layer.cornerRadius = falseButton.frame.size.height / 5
        
        updateUI()
        _ = quizManager.generateNewQuestion()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle!
        
        let isAnswerCorrect = quizManager.checkAnswer(answer: answer)
        
        if (isAnswerCorrect) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        // Finally remove the question from available questions and generate new one
        quizManager.removeCurrentQuestion()
        let isQuestionsRemaining = quizManager.generateNewQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        // ALTERNATIVE TO TIMER
        //            updateUI()
        
        if (!isQuestionsRemaining) {
            // Restart game
            print("RESTARTING")
            quizManager = QuizManager()
        }
    }
    
    @objc func updateUI() {
        // ALTERNATIVE TO TIMER
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//            self.questionLabel.text! = self.quizManager.trueFalseQuestions[self.currentQuestionIndex].question
//            self.trueButton.backgroundColor = UIColor.clear
//            self.falseButton.backgroundColor = UIColor.clear
//        }
        scoreLabel.text = "Score: \(quizManager.getScore())"
        progressBar.progress = quizManager.getProgress()
        questionLabel.text! = quizManager.getCurrentQuestion().question
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

