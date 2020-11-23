//
//  ContentView.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-21.
//

import SwiftUI

struct ImageTwentyFourGameView: View {
    @ObservedObject var imageTwentyFourGame: ImageTwentyFourGame
    
    var body: some View {
        VStack {
            HStack {
                ImageCardView(card: imageTwentyFourGame.card0)
                ImageCardView(card: imageTwentyFourGame.card1)
            }
            HStack {
                ImageCardView(card: imageTwentyFourGame.card2)
                ImageCardView(card: imageTwentyFourGame.card3)
            }
            Button("Next") {
                imageTwentyFourGame.newGame()
            }
            .font(.largeTitle)
        }
        .padding()
    }
}

struct ImageCardView: View {
    var card: TwentyFourGame<Image>.Card
    var body: some View {
        card.content
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTwentyFourGameView(imageTwentyFourGame: ImageTwentyFourGame())
    }
}
