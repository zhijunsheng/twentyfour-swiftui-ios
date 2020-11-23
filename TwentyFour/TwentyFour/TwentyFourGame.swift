//
//  TwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import Foundation

struct TwentyFourGame<CardContent> {
    private(set) var card0: Card
    private(set) var card1: Card
    private(set) var card2: Card
    private(set) var card3: Card
    
    init(cardContentFactory: (Int) -> CardContent) {
        let num0: Int = Int(arc4random() % 10 + 1)
        card0 = Card(number: num0, content: cardContentFactory(num0))
        
        let num1: Int = Int(arc4random() % 10 + 1)
        card1 = Card(number: num1, content: cardContentFactory(num1))
        
        let num2: Int = Int(arc4random() % 10 + 1)
        card2 = Card(number: num2, content: cardContentFactory(num2))
        
        let num3: Int = Int(arc4random() % 10 + 1)
        card3 = Card(number: num3, content: cardContentFactory(num3))
    }
    
    struct Card {
        var number: Int
        var content: CardContent
    }
}
