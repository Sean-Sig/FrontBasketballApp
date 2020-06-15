//
//  NumbersGames.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import Foundation

struct NumbersGames: Codable, Identifiable {
    let id = UUID()
    let background: String
    let city: String
    let numberOfGames: String
}

class numberOfGamesApi {
    func getNumberOfGames(completion: @escaping ([NumbersGames]) -> ()) {
        guard let url = URL(string: "http://127.0.0.1:5000/games") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([NumbersGames].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }
    .resume()
    }
}

