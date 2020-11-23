//
//  TextTwentyFourGame.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import SwiftUI

class TextTwentyFourGame {
    private var game: TwentyFourGame = TwentyFourGame(num0: 1, num1: 2, num2: 3, num3: 4) { (num) -> String in
        return "\(num)"
    }
}
