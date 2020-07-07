//
//  ViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Ian Fuelberth on 7/7/20.
//  Copyright © 2020 HousingInsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var paperImage: UIImageView!
    @IBOutlet weak var scissorsImage: UIImageView!
    
    var userChoice = ""
    var compChoice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let rvc = segue.destination as! ResultsViewController
        generateCompChoice()
        rvc.userChoice = userChoice
        rvc.compChoice = compChoice
        print("rvc.userChoice = \(rvc.userChoice)")
        print("rvc.compChoice = \(rvc.compChoice)")
    }
    
    func generateCompChoice()
    {
        let i = Int.random(in: 1...3)
        switch i {
        case 1:
            compChoice = "rock"
        case 2:
            compChoice = "paper"
        default:
            compChoice = "scissors"
        }
        
    }
    
    
    //MARK: - Gesture Recognizers
    
    override func viewWillAppear(_ animated: Bool) {
        let rockGestureRecog = UIGestureRecognizer(target: self, action: #selector(tappedRock))
        rockImage.addGestureRecognizer(rockGestureRecog)
        rockImage.isUserInteractionEnabled = true
          
        let paperGestureRecog = UIGestureRecognizer(target: self, action: #selector(tappedPaper))
        paperImage.addGestureRecognizer(paperGestureRecog)
        paperImage.isUserInteractionEnabled = true
          
        let scissorsGestureRecog = UIGestureRecognizer(target: self, action: #selector(tappedScissors))
        scissorsImage.addGestureRecognizer(scissorsGestureRecog)
        scissorsImage.isUserInteractionEnabled = true
    }
      
    @IBAction func tappedRock(_ sender: UIGestureRecognizer)
    {
        userChoice = "rock"
        print("rock")
        performSegue(withIdentifier: "toResultsPage", sender: nil)
    }
      
    @IBAction func tappedPaper(_ sender: UIGestureRecognizer)
    {
        userChoice = "paper"
        print("paper")
        performSegue(withIdentifier: "toResultsPage", sender: nil)
    }
      
    @IBAction func tappedScissors(_ sender: UIGestureRecognizer)
    {
        userChoice = "scissors"
        print("scissors")
        performSegue(withIdentifier: "toResultsPage", sender: nil)
    }
    
    
}

