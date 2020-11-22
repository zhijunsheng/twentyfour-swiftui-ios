//
//  TextTwentyFourGameView.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-22.
//

import SwiftUI

struct TextTwentyFourGameView: View {
    var body: some View {
        VStack {
            HStack {
                TextCardView(cardFace: "10")
                TextCardView(cardFace: "4")
            }
            HStack {
                TextCardView(cardFace: "3")
                TextCardView(cardFace: "7")
            }
        }
        .padding()
    }
}

struct TextCardView: View {
    var cardFace: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 9).stroke()
            Text(cardFace)
                .font(.largeTitle)
        }
    }
}

struct TextTwentyFourGameView_Previews: PreviewProvider {
    static var previews: some View {
        TextTwentyFourGameView()
    }
}
