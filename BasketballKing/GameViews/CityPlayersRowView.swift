//
//  CityPlayersRowView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct CityPlayersRowView: View {
    
    @State var posts: [NumbersGames] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Cities")
                    .font(.headline)
            }.padding([.leading, .trailing])
                .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    if (!self.posts.isEmpty) {
                        ForEach(posts) { post in NavigationLink(destination: GameByCityView(city: post.city)) {
                            CityPlayersView(addressCity: post.city, numberOfGames: post.numberOfGames, backgroundColor: post.background)
                        }.navigationBarTitle("Games")
                        }
                    } else {
                        EmptyCityPlayersView()
                    }
                }.padding([.trailing, .bottom])
            }.onAppear {
                numberOfGamesApi().getNumberOfGames { (posts) in
                    self.posts = posts
                }
            }
        }
    }
}



struct EmptyCityPlayersView: View {
    
    @State var showContent = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(width: 180, height: 160)
                .cornerRadius(20)
                .shadow(radius: 2)
            VStack {
                Button(action: {
                    self.showContent.toggle()
                }) {
                    Text("Create Game")
                        .font(.title)
                }.sheet(isPresented: $showContent) {
                    CreateGameView()
                }
            }.foregroundColor(.white)
            
            Spacer()
        }.frame(width: 180, height: 160)
            .padding(.leading, 15)
    }
}


struct CityPlayersView: View {
    
    var addressCity: String
    var numberOfGames: String
    var backgroundColor: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(backgroundColor))
                .frame(width: 180, height: 160)
                .cornerRadius(20)
                .shadow(radius: 2)
            VStack {
                Text(addressCity)
                    .font(.title)
                Text("\(numberOfGames) Game\(numberOfGames == "1" ? "" : "s")")
                    .font(.headline)
            }.foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
        }.frame(width: 180, height: 160)
            .padding(.leading, 15)
    }
}

struct CityPlayersRowView_Previews: PreviewProvider {
    static var previews: some View {
        CityPlayersRowView(posts: [NumbersGames(background: "background4", city: "Sandy", numberOfGames: "5")])
    }
}
