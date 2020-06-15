//
//  UserProfileInfo.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/9/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import Foundation

struct UserProfile: Codable, Identifiable {
    let id = UUID()
    let location: String
}

class userProfileApi {
    func getUserProfile(completion: @escaping ([UserProfile]) -> ()) {
        guard let url = URL(string: "http://127.0.0.1:5000/user") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([UserProfile].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }
    .resume()
    }
}
