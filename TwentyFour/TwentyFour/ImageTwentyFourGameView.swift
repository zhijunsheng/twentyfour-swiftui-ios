//
//  ContentView.swift
//  TwentyFour
//
//  Created by Golden Thumb on 2020-11-21.
//

import SwiftUI

struct ImageTwentyFourGameView: View {
    var body: some View {
        VStack {
            HStack {
                Image("QH")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("KC")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            HStack {
                Image("JC")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("AD")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTwentyFourGameView()
    }
}
