//
//  GameInfoView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/9/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct GameInfoView: View {
    
    
    @State var title: String
    @State var captian: String
    @State var phoneNumber: String
    @State var address: String
    @State var gameTime: String
    @State var playersNeeded: String
    @State var playersHave: String
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .leading) {

                    Text("Game Time")
                        .font(.headline)
                    GameTimeView(gameTime: gameTime)
                        .padding(.bottom)
                    
                    Text("Location")
                        .font(.headline)
                    GameAddressInfo(address: address)
                        .padding(.bottom)
                    
                    Text("Contact Info")
                        .font(.headline)
                    GameContactInfo(captain: captian, phoneNumber: phoneNumber)
                        .padding(.bottom)
                    
                    Text("Players")
                        .font(.headline)
                    GamePlayersView(playersNeeded: playersNeeded, playersHave: playersHave)
                        .padding(.bottom)
                    
                    HStack {
                        Button(action: {
                            print("Delete tapped!")
                        }) {
                            HStack {
                                Text("Join Game")
                                    .fontWeight(.semibold)
                                    .font(.headline)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(.darkGray), Color(.lightGray)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                        }
                    }.frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                        .padding(.leading, 50)
                        .padding(.trailing, 50)

                    
                }.navigationBarTitle(title).padding()
            }
            
        }
    }
}

struct GameTimeView: View {
    
    var gameTime: String
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 100)
                .cornerRadius(20)
                .shadow(radius: 2)
            VStack {
                Text(gameTime)
                .bold()
                    .font(.title)
            }.foregroundColor(.white).padding()
        }
        
    }
}

struct PlayerPhotoView: View {
    
    var playerName: String
    var playerPhoto: String
    var body: some View {
        VStack {
            Image(playerPhoto)
                .renderingMode(.original)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(100)
                .shadow(radius: 3)
            
            Text(playerName)
                .font(.caption)
        }.padding()
        
    }
}

struct GamePlayersView: View {
    var playersNeeded: String
    var playersHave: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 190)
                .cornerRadius(20)
                .shadow(radius: 2)

            Spacer()
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(GamePlayers.gamePlayers) { player in
                            PlayerPhotoView(playerName: player.playerName, playerPhoto: player.profilePicture)
                        }
                    }
                }
            }

            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Spacer()
                    HStack {
                        Text(playersHave)
                        Text("of")
                        Text(playersNeeded)
                    }
                   
                }
                
            }.padding()
        }.foregroundColor(.white)
    }
}


struct GameAddressInfo: View {
    var address: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 90)
                .cornerRadius(20)
                .shadow(radius: 2)
            
            VStack {
                Text(address)
                    .font(.headline)
                Spacer()
                HStack {
                    Text("Gym membership required")
                }
            }.foregroundColor(.white).padding()
        }
    }
}

struct GameContactInfo: View {
    var captain: String
    var phoneNumber: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 100)
                .cornerRadius(20)
                .shadow(radius: 2)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Captain")
                        .font(.subheadline)
                    Text(captain)
                        .font(.headline)
                }
                
                Spacer()
                Text(phoneNumber)
                }.foregroundColor(.white).padding()
        }
    }
}

struct GameInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GameInfoView(title: "Moby", captian: "Derek Crystal", phoneNumber: "801-828-0063", address: "113284 South Copper Drive Herriman Utah 84096", gameTime: "7:00PM", playersNeeded: "23", playersHave: "10")
    }
}
