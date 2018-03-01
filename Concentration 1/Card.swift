//
//  Card.swift
//  Concentration 1
//
//  Created by Maurizio Pietrantuono on 01/03/2018.
//  Copyright © 2018 Maurizio Pietrantuono. All rights reserved.
//

import Foundation

struct Card{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    private static func getUniqueIdentifier()->Int{
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
