//
//  ViewController.swift
//  Headsup
//
//  Created by Sgmedical on 2016/10/6.
//  Copyright © 2016年 Sgmedical. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
     1. store an array of questions
     2.
    */
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var CountLbl: UILabel!
    
    var currentQuestionIndex: Int = 0
    
    var quesArr = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]

    @IBAction func nextQuestionDidTap(_ sender: AnyObject) {
        
        let numberOfQuestions = quesArr.count
        if currentQuestionIndex < (numberOfQuestions - 1) {
            currentQuestionIndex += 1
        } else {
            currentQuestionIndex = 0
        }
        CountLbl.text = String(currentQuestionIndex)
        questionLabel.text = quesArr[currentQuestionIndex]
    }
    
}

