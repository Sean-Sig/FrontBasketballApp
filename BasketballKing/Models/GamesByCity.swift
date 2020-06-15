//
//  GamesByCity.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/8/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import Foundation

struct GamesByCity: Codable, Identifiable {
    let id = UUID()
    let image: String
    let gameName: String
    let captain: String
    let phoneNumber: String
    let address: String
    let gameTime: String
    let playersNeeded: String
    let playersHave: String
}

class gamesByCityApi {
    func getGamesByCity(completion: @escaping ([GamesByCity]) -> ()) {
        guard let url = URL(string: "http://127.0.0.1:5000/citygames") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([GamesByCity].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }
    .resume()
    }
}
