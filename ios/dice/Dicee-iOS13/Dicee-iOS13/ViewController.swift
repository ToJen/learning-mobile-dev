//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to regerence a UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
//    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        // WHO           WHAT    VALUE (image literal)
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
         */
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        /*
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceFour")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceFour")
         */
        
//        print("leftDiceNumber at beginning \(leftDiceNumber)")
//        print("rightDiceNumber at beginning \(rightDiceNumber)")
        
        let dice = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
//      print(#imageLiteral(resourceName: "DiceOne"))
        
        diceImageViewOne.image = dice[Int.random(in: 0...dice.capacity-1)] //dice.randomElement()
        diceImageViewTwo.image = dice[rightDiceNumber]
        
        rightDiceNumber = Int.random(in: 0...dice.capacity-1) //rightDiceNumber - 1
        
//        print("leftDiceNumber at end \(leftDiceNumber)")
//        print("rightDiceNumber at end \(rightDiceNumber)")
    }
}

