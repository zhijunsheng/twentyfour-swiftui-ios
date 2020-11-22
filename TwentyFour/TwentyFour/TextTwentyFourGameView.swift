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
                ZStack {
                    RoundedRectangle(cornerRadius: 9).stroke()
                    Text("8")
                        .font(.largeTitle)
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 9).stroke()
                    Text("4")
                        .font(.largeTitle)
                }
            }
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 9).stroke()
                    Text("3")
                        .font(.largeTitle)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 9).stroke()
                    Text("7")
                        .font(.largeTitle)
                }
            }
        }
        .padding()
        
    }
}

struct TextTwentyFourGameView_Previews: PreviewProvider {
    static var previews: some View {
        TextTwentyFourGameView()
    }
}
