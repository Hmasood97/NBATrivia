
//
//  QuestionBank.swift
//  NBATrivia
//
//  Created by Hisham Masood on 9/23/19.
//  Copyright © 2019 Masood Inc. All rights reserved.
//

import Foundation

class QuestionBank{

var questionList = [Question]()

init() {
    
    //Create question of object type Question //John Stockton
    //Question 1
    let inquiry = Question(text: "Which player has the most assists of all time?", choices: ["Chris Paul", "Jason kidd", "John Stockton", "Steve Nash"], correctAnswer: 2)
    
    //Question added to list
    questionList.append(inquiry)
    
    //Questions from now on //Kevin Love //Question2
    questionList.append(Question(text: "What player holds the record for most consecutive double-doubles in one season since the NBA/ABA merger?", choices: ["Russel Westbrook", "Michael Jordan", "Lebron James", "Kevin Love"], correctAnswer: 3))
      
    //Yao Ming //Question 3
    questionList.append(Question(text: "Who is the first player to be drafted #1 without playing college or high school basketball in the U.S.?", choices: ["Kobe Bryant", "Kevin Garnett", "Lebron James", "Yao Ming"], correctAnswer: 3))
    
    //Don Nelson // Question4
    questionList.append(Question(text: "Who has the most coaching wins?",  choices: ["Phil Jackson", "Gregg Popovich", "Don Nelson", "Pat Riley"], correctAnswer: 2))
    
    // 11-12 Bobcats //Question5
    questionList.append(Question(text: "Whic Team holds the record for worst regular season of all time?",  choices: ["11-12 Bobcats", "15-16 76ers ", "72-73 76ers", "09-10 Nets"], correctAnswer: 0))

    //Derrick Rose //Question 6
     questionList.append(Question(text: "Who is the youngest regular season MVP ever?",  choices: ["Hakeem olajuwon", "Michael Jordan", "Derrick Rose", "Lebron James"], correctAnswer: 2))
    
    // Bill russell question 7
    
     questionList.append(Question(text: "Who has the most finals mvps ever?",  choices: ["Shaq", "Michael Jordan", "K. Abdul-Jabbar", "Bill Russell"], correctAnswer: 1))
    
    //KD Question8
    questionList.append(Question(text: "Which NBA player joined his opponent after being up 3-1 against them in the Western Conference Finals?", choices: ["Kevin Durant", "Karl Malone", "Russel Westbrook", "Chris Paul"], correctAnswer: 0))
      
    }
}
