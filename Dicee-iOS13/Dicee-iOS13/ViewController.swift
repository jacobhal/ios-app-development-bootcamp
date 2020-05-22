//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let firstDice = Int.random(in: 0 ..< 6)
//        let secondDice = Int.random(in: 0 ... 5)
//        print("First dice is \(firstDice+1)")
        diceImageView1.image = diceImages[firstDice]
        diceImageView2.image = diceImages.randomElement()
    }
    
}

