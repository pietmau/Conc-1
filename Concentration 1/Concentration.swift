//
//  Concentration.swift
//  Concentration 1
//
//  Created by Maurizio Pietrantuono on 01/03/2018.
//  Copyright © 2018 Maurizio Pietrantuono. All rights reserved.
//

import Foundation

class Concentration{
    var cards = [Card]()
    
    init(numberOfPairs:Int) {
        for _ in 1...numberOfPairs{
            let card = Card()
            cards += [card,card]
        }
    }
    
    func chose(at index:Int){}
}
