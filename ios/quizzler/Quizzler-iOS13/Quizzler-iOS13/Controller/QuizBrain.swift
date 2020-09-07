//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Tomisin Jenrola on 2020-08-03.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz: [Question] = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    ]
    
    var questionNumber = 0
    var numCorrect = 0
    
    mutating func answerCorrect(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            self.numCorrect += 1
            return true
        }
        return false
    }
    
    mutating func nextQuestion() {
        if self.questionNumber >= quiz.count-1 {
            self.questionNumber = 0
            self.numCorrect = 0
        } else {
            self.questionNumber += 1
        }
    }
    
    func getQuestionText() -> String {
        return self.quiz[self.questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(self.questionNumber)/Float(self.quiz.count-1)
    }
    
    func getScore() -> String {
        return "\(numCorrect) out of \(quiz.count)"
    }
}
