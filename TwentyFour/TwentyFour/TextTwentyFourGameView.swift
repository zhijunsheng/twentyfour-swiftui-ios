//
//  TextTwentyFourGameView.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import SwiftUI

struct TextTwentyFourGameView: View {
    @ObservedObject var textTwentyFourGame: TextTwentyFourGame
    
    var body: some View {
        VStack {
            HStack {
                TextCardView(card: textTwentyFourGame.card0)
                TextCardView(card: textTwentyFourGame.card1)
            }
            HStack {
                TextCardView(card: textTwentyFourGame.card2)
                TextCardView(card: textTwentyFourGame.card3)
            }
        }
        .padding()
        .contentShape(Rectangle())
        .onTapGesture {
            textTwentyFourGame.newGame()
        }
    }
}

struct TextCardView: View {
    var card: TwentyFourGame<String>.Card
    var body: some View {
        GeometryReader { geo in
            ZStack {
                RoundedRectangle(cornerRadius: 9).stroke()
                Text(card.content)
                    .font(Font.system(size: min(geo.size.width, geo.size.height) * 0.7))
            }
        }
    }
}

struct TextTwentyFourGameView_Previews: PreviewProvider {
    static var previews: some View {
        TextTwentyFourGameView(textTwentyFourGame: TextTwentyFourGame())
    }
}
