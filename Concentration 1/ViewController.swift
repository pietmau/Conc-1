//
//  ViewController.swift
//  Concentration 1
//
//  Created by Maurizio Pietrantuono on 01/03/2018.
//  Copyright © 2018 Maurizio Pietrantuono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Concentration((cardButtons.count+1)/2)
  
    var flipCount:Int = 0 {didSet{
        label.text = "Flips \(flipCount)"
        }}
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func onCardTouch(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            game.chose(at: cardNumber)
            updateViewFromModel()
        }
        else{
            print("Not found")
        }
    }
    
    var emojisChoices = ["👵","⛑","🐞","🏖","🌋","💩","👀","😻","🕶"]

    var emojiis = [Int: String]()
    
    func updateViewFromModel(){
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp{
                button.setTitle(emojis(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            else{
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            }
        }
    }
    
    func emojis(for card:Card)->String{
        if emojiis[card.identifier] == nil, emojisChoices.count > 0 {
            let rand = Int(arc4random_uniform(UInt32(emojisChoices.count)))
            emojiis[card.identifier] = emojisChoices.remove(at: rand)
        }
        return emojiis[card.identifier] ?? "?"
    }
}

