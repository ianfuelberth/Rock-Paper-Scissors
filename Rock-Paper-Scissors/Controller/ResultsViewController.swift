//
//  ResultsViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Ian Fuelberth on 7/7/20.
//  Copyright © 2020 HousingInsecurity. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var userChoiceImage: UIImageView!
    @IBOutlet weak var compChoiceImage: UIImageView!
    @IBOutlet weak var responseStatement: UILabel!
    
    var userChoice: String = ""
    var compChoice: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        /*View Users Choice --> connect image view to choice image
        View Computer Choice --> connect random generation to user choice
        Display text (done)
        Try again button connection --> brings you back to first storyboard
        */
               
        
        var response = ""
              
        
              
        // Code that generates what text to display
        if userChoice == "rock" && compChoice == "scissors"
        {
            response = "You won :) \(userChoice) is superior"
        }
        else if userChoice == "rock" && compChoice == "paper"
        {
            response = "You lost :( Better luck next time!"
        }
        else if userChoice == "paper" && compChoice == "rock"
        {
            response = "You won :) \(userChoice) is superior"
        }
        else if userChoice == "paper" && compChoice == "scissors"
        {
            response = "You lost :( Better luck next time!"
        }
        else if userChoice == "scissors" && compChoice == "paper"
        {
            response = "You won :) \(userChoice) is superior"
        }
        else if userChoice == "scissors" && compChoice == "rock"
        {
            response = "You lost :( Better luck next time!"
        }
        else if userChoice == compChoice
        {
            response = "You tied :P Try another round!"
        }
        else
        {
            print("Cannot load if win or loss")
        }
    }
}
