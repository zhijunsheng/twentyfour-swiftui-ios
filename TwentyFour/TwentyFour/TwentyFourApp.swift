//
//  TwentyFourApp.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-21.
//

import SwiftUI

@main
struct TwentyFourApp: App {
    var body: some Scene {
        WindowGroup {
//            let game = TextTwentyFourGame()
//            TextTwentyFourGameView(textTwentyFourGame: game)
            
            let game = ImageTwentyFourGame()
            ImageTwentyFourGameView(imageTwentyFourGame: game)
        }
    }
}
