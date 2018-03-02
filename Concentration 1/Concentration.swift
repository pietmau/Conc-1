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
    
    var indexOfFaceUpCard: Int?
    
    init(_ numberOfPairs:Int) {
        for _ in 1...numberOfPairs{
            let card = Card()
            cards += [card,card]
        }
    }
    
    func chose(at index:Int){
        if !cards[index].isMatched{
            if let matchIndex = indexOfFaceUpCard, matchIndex != index{
                if cards[matchIndex].identifier == cards[index].identifier{
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfFaceUpCard = nil
            }
            else
            {
                for down in cards.indices{
                    cards[down].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfFaceUpCard = index
            }
        }
    }
}
