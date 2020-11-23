//
//  TwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import Foundation

struct TwentyFourGame<CardContent> {
    private let maxNum: Int = 13
    
    private(set) var card0: Card
    private(set) var card1: Card
    private(set) var card2: Card
    private(set) var card3: Card
    
    var cardContentFactory: (Int) -> CardContent
    
    init(cardContentFactory: @escaping (Int) -> CardContent) {
        self.cardContentFactory = cardContentFactory
        
        let num0: Int = Int(arc4random()) % maxNum + 1
        card0 = Card(number: num0, content: cardContentFactory(num0))
        
        let num1: Int = Int(arc4random()) % maxNum + 1
        card1 = Card(number: num1, content: cardContentFactory(num1))
        
        let num2: Int = Int(arc4random()) % maxNum + 1
        card2 = Card(number: num2, content: cardContentFactory(num2))
        
        let num3: Int = Int(arc4random()) % maxNum + 1
        card3 = Card(number: num3, content: cardContentFactory(num3))
    }
    
    mutating func newGame() {
        card0.number = Int(arc4random()) % maxNum + 1
        card0.content = cardContentFactory(card0.number)
        card1.number = Int(arc4random()) % maxNum + 1
        card1.content = cardContentFactory(card1.number)
        card2.number = Int(arc4random()) % maxNum + 1
        card2.content = cardContentFactory(card2.number)
        card3.number = Int(arc4random()) % maxNum + 1
        card3.content = cardContentFactory(card3.number)
    }
    
    struct Card {
        var number: Int
        var content: CardContent
    }
}
