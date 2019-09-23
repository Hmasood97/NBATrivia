//
//  ViewController.swift
//  NBATrivia
//
//  Created by Hisham Masood on 9/23/19.
//  Copyright © 2019 Masood Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var firstAnswerButton: UIButton!
    
    
    @IBOutlet weak var secondAnswerButton: UIButton!
    
    
    @IBOutlet weak var thirdAnswerButton: UIButton!
    
    
    @IBOutlet weak var fourthAnswerButton: UIButton!
    
    
    
    
    
    
    let allQuestions = QuestionBank()
    var scoreCounter: Int = 0
    var questionNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let questionOne = allQuestions.questionList[0]
        questionLabel.text = questionOne.questionText
        firstAnswerButton.setTitle(questionOne.answerChoices[0] , for: .normal)
        secondAnswerButton.setTitle(questionOne.answerChoices[1] , for: .normal)
        thirdAnswerButton.setTitle(questionOne.answerChoices[2] , for: .normal)
        fourthAnswerButton.setTitle(questionOne.answerChoices[3] , for: .normal)



        updateUI()
    
        // Do any additional setup after loading the view.
    }

    
       @IBAction func answerPressed(_ sender: AnyObject) {
        let correctAnswer = allQuestions.questionList[questionNumber].answer
        let correctAnswerText : String = allQuestions.questionList[questionNumber].answerChoices[correctAnswer]
        
        if sender.tag == correctAnswer {
            scoreCounter = scoreCounter + 1;
            
        }
        else {
            if questionNumber < 7 {
            let alertTwo = UIAlertController(title: "Sorry That's Wrong", message: "The correct answer is: \(correctAnswerText) " ,preferredStyle: .alert)
            let closeMessage = UIAlertAction(title: "Close", style: .default, handler:  { (UIAlertAction) in
                             })
            alertTwo.addAction(closeMessage)
             present(alertTwo, animated: true, completion: nil)
        }
        }
    
        
        questionNumber+=1;
           nextQuestion()
        
    }
    
    func nextQuestion () {
        if questionNumber < 8 {
              questionLabel.text = allQuestions.questionList[questionNumber].questionText
              firstAnswerButton.setTitle(allQuestions.questionList[questionNumber].answerChoices[0], for: .normal)
              secondAnswerButton.setTitle(allQuestions.questionList[questionNumber].answerChoices[1], for: .normal)
              thirdAnswerButton.setTitle(allQuestions.questionList[questionNumber].answerChoices[2], for: .normal)
              fourthAnswerButton.setTitle(allQuestions.questionList[questionNumber].answerChoices[3], for: .normal)
           
                  updateUI()
              }
              else {
                    updateUI()
                  let alert = UIAlertController(title: "Awesome ", message: "The Final Correct Answer is Kevin Durant. Wanna go again?" ,preferredStyle: .alert)
                  
                  let restartAction = UIAlertAction(title: "Restart", style: .default, handler:  { (UIAlertAction) in
                      self.restartGame()
                  })
                  
                  alert.addAction(restartAction)
                  
                  present(alert, animated: true, completion: nil)
              }
        
    }
    
    
    
    func updateUI() {
         scoreLabel.text = "Score: \(scoreCounter)"
        if questionNumber >= 8 {
            
        } else {
            progressLabel.text = "\(questionNumber+1) / 8"

        }    }
    
    func restartGame() {
        scoreCounter = 0
        questionNumber = 0
        nextQuestion()
    }

}

