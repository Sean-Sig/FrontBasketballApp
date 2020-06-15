//
//  RankingsItemView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct RankingsItemView: View {
    
    @State var playerRankings: PlayerRankings
    var body: some View {
        HStack {
            Image(playerRankings.profileImage).resizable().cornerRadius(100).frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(playerRankings.playerName)
                Text("Position: " + playerRankings.position)
                    .font(.subheadline)
                    .fontWeight(.light)
            }
            
            
            Spacer()
            Text(playerRankings.rank)
                .font(.title)
                .fontWeight(.regular)

        }.padding([.leading, .trailing])
    }
}

struct RankingsItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RankingsItemView(playerRankings: PlayerRankings(profileImage: "Image", playerName: "LeBron James", position: "PF", rank: "1"))
        }.previewLayout(.fixed(width: 300, height: 70))
        
    }
}
