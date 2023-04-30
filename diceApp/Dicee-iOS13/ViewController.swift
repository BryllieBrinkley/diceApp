//  ViewController.swift
//  Dicee-iOS13

import UIKit

class ViewController: UIViewController {

// IBOutlet allows me to reference a UI element. ** IB = Interface Builder**
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    
// IBAction allows programmer to perform an action on UI element. IB = Interface Builder**!!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
    
    // values assigned to var = mutable (can be changed), values assigned to 'let' = immutable (cannot be changed)
        
    let diceArray = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
        ]
        
        
//        diceImageView1.image = diceArray[Int.random(in: 0...5)]
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        //.random can also be used on basically any data type (int, float, bool, etc.)
        
    //0...5 == range operator (basically generating random integer between 0 and 5) and used to reference what element in diceArray will show in respective ImageView.
        
    // lines 28-29 rafactored below using .randomElement() - can also use .shuffle()
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
    }
    
}
