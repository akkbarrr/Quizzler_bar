//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by apple on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "apakah lu lucu?", answer: "True"),
        Question(text: "gw laper", answer: "True"),
        Question(text: "simon says you're funny", answer: "True"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].answer
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 10
            return true
        }else{
            return false
        }
    }
}
