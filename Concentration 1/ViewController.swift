//
//  ViewController.swift
//  Concentration 1
//
//  Created by Maurizio Pietrantuono on 01/03/2018.
//  Copyright © 2018 Maurizio Pietrantuono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var cards: [UIButton]!

    var flipCount:Int = 0 {didSet{
        label.text = "Flips \(flipCount)"
        }}
    
    @IBAction func onCardTouch(_ sender: UIButton) {
    }
    
}

