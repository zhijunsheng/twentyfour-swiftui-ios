//
//  TwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import Foundation

struct TwentyFourGame<CardContent> {
    private var card0: Card
    private var card1: Card
    private var card2: Card
    private var card3: Card
    
    init(num0: Int, num1: Int, num2: Int, num3: Int, cardContentFactory: (Int) -> CardContent) {
        card0 = Card(number: num0, content: cardContentFactory(num0))
        card1 = Card(number: num1, content: cardContentFactory(num1))
        card2 = Card(number: num2, content: cardContentFactory(num2))
        card3 = Card(number: num3, content: cardContentFactory(num3))
    }
    
    struct Card {
        var number: Int
        var content: CardContent
    }
}
