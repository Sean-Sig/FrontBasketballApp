//
//  GameByCityView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct GameByCityView: View {
        
    var city: String
    @State var posts: [GamesByCity] = []
    var body: some View {
        VStack {
            ScrollView {
                if (!self.posts.isEmpty) {
                    ForEach(posts) { post in NavigationLink(destination: GameInfoView(title: post.gameName, captian: post.captain, phoneNumber: post.phoneNumber, address: post.address, gameTime: post.gameTime, playersNeeded: post.playersNeeded, playersHave: post.playersHave)) {
                         GameDetailsRow(imageName: post.image, gameName: post.gameName, gameCaptian: post.captain, gameAddress: post.address)
                    }.navigationBarTitle(self.city)
                        Divider()
                    }.padding()
                    .buttonStyle(PlainButtonStyle())
                } else {
                    GameDetailsRow(imageName: "Image", gameName: "Starter", gameCaptian: "Josh Fab", gameAddress: "13254 coper park drive")
                }
                
            }.onAppear {
                gamesByCityApi().getGamesByCity { (posts) in
                    self.posts = posts
                }
            }
        }

    }
}

struct GameDetailsRow: View {
    
    var imageName: String
    var gameName: String
    var gameCaptian: String
    var gameAddress: String
    var body: some View {
        HStack {
            Image(imageName)
            .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(gameName)
                Spacer()
                Text(gameCaptian)
                    .font(.footnote)
                Text(gameAddress)
                .font(.footnote)
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
    }
}

struct GameByCityView_Previews: PreviewProvider {
    static var previews: some View {
        GameByCityView(city: "Draper", posts: [GamesByCity(image: "Image", gameName: "Starter", captain: "Josh Fab", phoneNumber: "801-828-0063", address: "13254 coper park drive", gameTime: "8:00", playersNeeded: "20", playersHave: "7")])
    }
}
