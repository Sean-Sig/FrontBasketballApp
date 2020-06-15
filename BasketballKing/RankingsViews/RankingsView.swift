//
//  RankingsView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct RankingsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Rankings").font(Font.largeTitle).bold()
                    }
                }.padding([.top, .leading, .trailing])
                
                ForEach(PlayerRankings.playerRankings) { player in
                  RankingsItemView(playerRankings: player)
                    Divider()
                }
            }
        }
    }
}

struct RankingsView_Previews: PreviewProvider {
    static var previews: some View {
        RankingsView()
    }
}
