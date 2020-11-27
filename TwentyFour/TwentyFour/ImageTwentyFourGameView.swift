//
//  ContentView.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-21.
//

import SwiftUI

struct ImageTwentyFourGameView: View {
    @ObservedObject var imageTwentyFourGame: ImageTwentyFourGame
    
    @State var opacity: Double = 1
    
    var body: some View {
        VStack {
            Group {
                HStack {
                    ImageCardView(card: imageTwentyFourGame.card0)
                    ImageCardView(card: imageTwentyFourGame.card1)
                }
                HStack {
                    ImageCardView(card: imageTwentyFourGame.card2)
                    ImageCardView(card: imageTwentyFourGame.card3)
                }
            }
            .opacity(opacity)
            
            Button("Next") {
                imageTwentyFourGame.newGame()
                opacity = 0
                withAnimation(.easeInOut(duration: 0.75)) {
                    opacity = 1
                }
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
