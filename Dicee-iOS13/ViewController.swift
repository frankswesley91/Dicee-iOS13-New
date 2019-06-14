//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//  Animation Created by Professor Wang
//  Copyright 2023 Flagler College. All rights reserved


//Updated by Wesley Franks
//Last updated on 4/9/23
//Version 1.0
// Enhancements: (GIT-HUB UPLOADED VERSION)
// 1) Button 1   (Show when duplicates occur) eyes
// 2) Probability information for each roll
// 3)Insert Wager and see if you win whn a duplicate arises resulting in 2X your winnings or you lose
// 4) Animated UI image smiley faces for each button
// 5) Animated Rotating Custom Sign/Dice roll
import UIKit
import AVFoundation
class ViewController: UIViewController {
    //casino image label
    
    @IBOutlet weak var WesCasino: UIImageView!
    //Wager amount
    @IBOutlet weak var WagerAmount: UITextField!
    @IBOutlet weak var ResultMsg: UILabel!
    //Animated Faces
    @IBOutlet weak var HappyFace: UIImageView!
    
    @IBOutlet weak var CoolFace: UIImageView!
    //Output Labels
    
    @IBOutlet weak var ProbLabel2: UILabel!
    
    @IBOutlet weak var probLabel3: UILabel!
    
    @IBOutlet weak var probLabel: UILabel!
    
    @IBOutlet weak var duplicateLabel3: UILabel!
    
    @IBOutlet weak var duplicateLabel2: UILabel!
    
    @IBOutlet weak var duplicateLabel: UILabel!
    //Rolling Dice images
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    //Variable for Ehancment Designed to add total rolls
        
        //--------------Button 1 -------------//
        @IBAction func rollButtonPressed(_ sender: UIButton) {
            
            //Dice array
            let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
            let randomNum1 = Int.random(in: 0...5)
            let randomNum2 = Int.random(in: 0...5)
            //Randomized both dice images
            diceImageView1.image = diceArray[randomNum1]
            diceImageView2.image = diceArray[randomNum2]
            
            var duplicateResult = ""
            
            
            if (randomNum1 + 1) == (randomNum2 + 1)
            {
                duplicateResult = "You got a duplicate!!"

            }   else if (randomNum1 == 0) && (randomNum2 == 0)
            {
                duplicateResult = "Snakes Eyes!!"
            } else{
                duplicateResult = "Pretty lame roll if you ask me..."
            }
            
            duplicateLabel.text = "You got a \(randomNum1 + 1)"
            duplicateLabel2.text = "You also got a \(randomNum2 + 1)"
            duplicateLabel3.text = duplicateResult
            
            let happyFace = [#imageLiteral(resourceName: "Blush"), #imageLiteral(resourceName: "Sunglasses"), #imageLiteral(resourceName: "Smiley Face")]
            HappyFace.animationImages = happyFace
            HappyFace.animationDuration = 2.0
            HappyFace.animationRepeatCount = 3
            
            HappyFace.startAnimating()
            
        }
        
        
        
        //-----------Button 2----------------//
        @IBAction func probInfo(_ sender: UIButton) {
            let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
            let diceArray2 = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
            let randomNum1 = Int.random(in: 0...5)
            let randomNum2 = Int.random(in: 0...5)
            //Wager Calcualtions
            let wagerAmount = Double(WagerAmount.text!)
            let resultMsg = ResultMsg.text
            
            var total = 0.00
            
            if (randomNum1 + 1) == (randomNum2 + 1)
            {
                total = (wagerAmount!*2.00)
                ResultMsg.text = "You Won $ \(total)!"
            }
            else
            {
                ResultMsg.text = "You Lost everything!"
            }
            
            
            
            
            //Randomized both dice images
            diceImageView1.image = diceArray[randomNum1]
            diceImageView2.image = diceArray[randomNum2]
            let totalRoll = (randomNum1 + 1) + (randomNum2 + 1)
            
            duplicateLabel.text = "You got a \(randomNum1 + 1)"
            duplicateLabel2.text = "Your second number was a \(randomNum2 + 1)"
            duplicateLabel3.text = "Both of those numbers combined is \(totalRoll)"
            probLabel.text = "The probability of"
            ProbLabel2.text = "this result"
            probLabel3.text = "was .027% or 1/36 :)"
            
            let coolAnimation = [#imageLiteral(resourceName: "Sunglasses"), #imageLiteral(resourceName: "Blush"), #imageLiteral(resourceName: "Smiley Face")]
            CoolFace.animationImages = coolAnimation
            CoolFace.animationDuration = 2.0
            CoolFace.animationRepeatCount=3
            CoolFace.startAnimating()
            
            diceImageView1.animationImages = diceArray
            diceImageView1.animationDuration = 1.5
            diceImageView1.animationRepeatCount = 6
            
            diceImageView2.animationImages = diceArray2
            diceImageView2.animationDuration = 1.5
            diceImageView2.animationRepeatCount = 6
            
            diceImageView1.startAnimating()
            diceImageView2.startAnimating()
            
            
        }
        
       
    @IBAction func WelcomeButton(_ sender: UIButton) {
        let welcomeArray = [#imageLiteral(resourceName: "Wesley's Casino (1)"), #imageLiteral(resourceName: "Wesley's Casino (2)"), #imageLiteral(resourceName: "Wesley's Casino (3)"), #imageLiteral(resourceName: "Wesley's Casino (4)")]
        WesCasino.animationImages = welcomeArray
        WesCasino.animationDuration = 2.0
        WesCasino.animationRepeatCount = 4
        WesCasino.startAnimating()
        
        
    }
    
            
            
        }
    
    
    

