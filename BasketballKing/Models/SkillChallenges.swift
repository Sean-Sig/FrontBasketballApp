//
//  SkillChallenges.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/6/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import Foundation

struct SkillChallenges: Identifiable {
    let id = UUID()
    let skillType: String
    let challenge: String
}

extension SkillChallenges {

    static let skillChallenges = [
        SkillChallenges(skillType: "Shooting", challenge: "Three Point Contest"),
        SkillChallenges(skillType: "Shooting", challenge: "Free Throws"),
        SkillChallenges(skillType: "Shooting", challenge: "Layup Drill")
    ]
}
