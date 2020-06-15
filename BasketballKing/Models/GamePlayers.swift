//
//  GamePlayers.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/11/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import Foundation

struct GamePlayers: Identifiable {
    let id = UUID()
    let playerName: String
    let profilePicture: String
}

extension GamePlayers {

static let gamePlayers = [
        GamePlayers(playerName: "Sean Siggard", profilePicture: "Image"),
        GamePlayers(playerName: "Derek Crystal", profilePicture: "Image"),
        GamePlayers(playerName: "John Stockton", profilePicture: "Image"),
        GamePlayers(playerName: "Pete Davidson", profilePicture: "Image"),
        GamePlayers(playerName: "Josh Fabrizio", profilePicture: "Image")
    ]
}
