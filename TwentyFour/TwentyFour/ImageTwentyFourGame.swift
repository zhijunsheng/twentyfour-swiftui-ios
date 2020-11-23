//
//  ImageTwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import SwiftUI

class ImageTwentyFourGame {
    private var game = TwentyFourGame<Image>(cardContentFactory: { (num) -> Image in
        let numStr: String = num == 1 ? "A" : "\(num)"
        let suit: String = ["S", "H", "D", "C"][Int(arc4random()) % 4]
        return Image(numStr + suit)
    })
    
    var card0: TwentyFourGame<Image>.Card { game.card0 }
    var card1: TwentyFourGame<Image>.Card { game.card1 }
    var card2: TwentyFourGame<Image>.Card { game.card2 }
    var card3: TwentyFourGame<Image>.Card { game.card3 }
}
