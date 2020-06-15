//
//  PlayerRankings.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/6/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import Foundation

struct PlayerRankings: Identifiable {
    let id = UUID()
    let profileImage: String
    let playerName: String
    let position: String
    let rank: String
}

extension PlayerRankings {

    static let playerRankings = [
        PlayerRankings(profileImage: "Image", playerName: "Sean Siggard", position: "PF", rank: "1"),
        PlayerRankings(profileImage: "Image", playerName: "Brayden Beckham", position: "SG", rank: "2")
    ]
}
