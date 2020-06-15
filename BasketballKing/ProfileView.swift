//
//  ProfileView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Profile").font(Font.largeTitle).bold()
                    }
                }.padding([.top, .leading, .trailing])
                ProfileCardView(imageLogo: "Image", fullName: "LeBron James", playerPosition: "PF")
                HStack {
                    RecordView()
                    RankView()
                }
                PreviousGamesView()
            }
        }

            
        }
    }

struct RecordView : View {

    var body : some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 100)
                .cornerRadius(20)
                .shadow(radius: 2)
            
            VStack(alignment: .leading) {
                Text("Record").foregroundColor(Color.white.opacity(0.8)).bold()
                HStack {
                    Text("61Win").foregroundColor(.white)
                    Text("22Loss").foregroundColor(.white)
                }
                
            }
        }.padding()
    }
}

struct RankView : View {

    var body : some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 100)
                .cornerRadius(20)
                .shadow(radius: 2)
            
            VStack(alignment: .leading) {
                Text("Rank").foregroundColor(Color.white.opacity(0.8)).bold()

                HStack {
                    Text("1st Utah").foregroundColor(.white)
                    
                }
                
            }
        }.padding()
    }
}

struct ProfileCardView : View {
    
    var imageLogo: String
    var fullName: String
    var playerPosition: String
    
    var body : some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(height: 100)
                .cornerRadius(20)
                .shadow(radius: 2)
            
            HStack {
                Image(imageLogo).resizable().cornerRadius(100).frame(width: 50, height: 50)
                Text(fullName).foregroundColor(.white)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Position").foregroundColor(Color.white.opacity(0.8)).bold()
                    Text(playerPosition).foregroundColor(.white)
                }
                
            }.padding()
        }.padding()
    }
}

struct PreviousGamesView : View {

    var body : some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(alignment: .center)
                .cornerRadius(20)
                .shadow(radius: 2)
            
            VStack(alignment: .leading) {
                Text("Past 5 Games").foregroundColor(Color.white.opacity(0.8)).bold()
                Spacer()
                VStack {
                    SquadList(opponent: "Sharks", status: "L")
                    SquadList(opponent: "Ducks",status: "W")
                    SquadList(opponent: "Lakers",status: "L")
                    SquadList(opponent: "Jazz", status: "W")
                    SquadList(opponent: "Suns", status: "W")
                    
                }
                
            }.padding()
        }.padding()
    }
}

struct SquadList : View {
    var opponent : String
    var status : String

    var body : some View {
        ZStack {
            Rectangle()
            .fill(Color(.lightGray))
            .frame(height: 50, alignment: .center)
            .cornerRadius(20)
            LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.2)]), startPoint: .top, endPoint: .bottom)
        VStack(alignment: .leading) {
            HStack {
                Text(opponent)
                Spacer()
                if (status == "L") {
                    Text(status)
                    .foregroundColor(Color.red).bold()
                } else {
                    Text(status)
                    .foregroundColor(Color.green).bold()
                }
                
            }.padding()
            
        }
        }.cornerRadius(20)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
