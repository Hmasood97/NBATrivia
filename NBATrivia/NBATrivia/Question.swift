//
//  Question.swift
//  NBATrivia
//
//  Created by Hisham Masood on 9/23/19.
//  Copyright © 2019 Masood Inc. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answerChoices : [String]
    let answer : intmax_t
    
    init(text : String, choices: [String], correctAnswer: Int) {
            questionText = text
            answerChoices = choices
            answer = correctAnswer
       }
    
}
