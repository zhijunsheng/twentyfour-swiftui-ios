//
//  TwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import Foundation

struct TwentyFourGame<CardContent> {
    var card0: Card
    var card1: Card
    var card2: Card
    var card3: Card
    
    struct Card {
        var number: Int
        var content: CardContent
    }
}
