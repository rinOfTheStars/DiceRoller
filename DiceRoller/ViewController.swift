//
//  ViewController.swift
//  DiceRoller
//
//  Created by Zoey Iatridis on 3/27/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImage.image = UIImage(named: "DiceTemp")
    }
    
    @IBAction func onPress(_ sender: UIButton) {
        let rng = arc4random_uniform(6) + 1
        switch rng {
        case 1:
            resultLabel.text = "Result: 1"
            diceImage.image = UIImage(named: "Dice1")
        case 2:
            resultLabel.text = "Result: 2"
            diceImage.image = UIImage(named: "Dice2")
        case 3:
            resultLabel.text = "Result: 3"
            diceImage.image = UIImage(named: "Dice3")
        case 4:
            resultLabel.text = "Result: 4"
            diceImage.image = UIImage(named: "Dice4")
        case 5:
            resultLabel.text = "Result: 5"
            diceImage.image = UIImage(named: "Dice5")
        case 6:
            resultLabel.text = "Result: 6"
            diceImage.image = UIImage(named: "Dice6")
        default:
            resultLabel.text = "Result: ?"
            diceImage.image = UIImage(named: "DiceTemp")
        }
    }
    
}

