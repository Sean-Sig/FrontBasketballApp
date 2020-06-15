//
//  CityPlayersView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct CityPlayersView: View {
    
    @State var numberGames: NumbersGame
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color(.lightGray))
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                VStack {
                    Text(numberGames.city).foregroundColor(.white).font(Font.title).bold()
                    Text(numberGames.numberOfGames).foregroundColor(Color.white.opacity(0.8)).bold()
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: 5)
    }
}

struct CityPlayersView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CityPlayersView(numberGames: NumbersGame(city: "Sandy", numberOfGames: "33"))
        }
        
    }
}
