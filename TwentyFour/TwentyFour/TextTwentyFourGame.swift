//
//  TextTwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import SwiftUI

class TextTwentyFourGame: ObservableObject {
    @Published private var game = TwentyFourGame<String>() { (num) in "\(num)" }
    
    var card0: TwentyFourGame<String>.Card { game.card0 }
    var card1: TwentyFourGame<String>.Card { game.card1 }
    var card2: TwentyFourGame<String>.Card { game.card2 }
    var card3: TwentyFourGame<String>.Card { game.card3 }
    
    func newGame() {
        game.newGame()
    }
}
