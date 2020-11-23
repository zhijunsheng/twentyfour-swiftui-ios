//
//  TextTwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import SwiftUI

class TextTwentyFourGame {
    private var game = TwentyFourGame<String>(num0: 1, num1: 2, num2: 3, num3: 4) { (num) in "\(num)" }
    
    var card0: TwentyFourGame<String>.Card { game.card0 }
    var card1: TwentyFourGame<String>.Card { game.card1 }
    var card2: TwentyFourGame<String>.Card { game.card2 }
    var card3: TwentyFourGame<String>.Card { game.card3 }
}
