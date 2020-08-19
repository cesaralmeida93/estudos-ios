//
//  ViewController.swift
//  Project2
//
//  Created by GSW Mobile Team on 02/08/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    // MARK:- Global variables
    
    var countries = [String]()
    var correctAnswer = 0
    var score = 0
    var question = 0
    
    // MARK:- View DidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        //UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor

        
        askQuestion()
        
        //countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]

    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        correctAnswer = Int.random(in: 0...2)
        title = "\(countries[correctAnswer].uppercased())-\(String(score))"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if question != 10 {
            
            var title: String
            
            if sender.tag == correctAnswer {
                title = "Correct"
                score += 1
                
                let correctAC = UIAlertController(title: title, message: "Your Score is \(score).", preferredStyle: .alert)
                correctAC.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
                present(correctAC, animated: true)
            } else {
                title = "Wrong"
                score -= 1
                
                let wrongAC = UIAlertController(title: "Wrong", message: "that's the flag of \(countries[sender.tag]).", preferredStyle: .alert)
                wrongAC.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
                present(wrongAC, animated: true)
                
                
            }
            

            
            question += 1
            print(question)
            
        } else {
            let questionAC = UIAlertController(title: "finished", message: "You answered \(question) questions.", preferredStyle: .alert)
            questionAC.addAction(UIAlertAction(title: "Teste", style: .default))
            present(questionAC, animated: true)
        }
        

        
    }
    
}

