//
//  SkillsBoxRowView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct SkillsBoxRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Skill Challenges")
            .font(.headline)
            .padding([.leading, .trailing])
            .padding(.top, 30)
        
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(SkillChallenges.skillChallenges) { games in NavigationLink(destination:
                    SkillsView()) {
                        SkillsBoxView(skillsChallenges: games)
                        }
                    }
                }
            }
        }
    }
}

struct SkillsBoxView: View {

    @State var skillsChallenges: SkillChallenges
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.blue))
                .frame(width: 180, height: 160)
                .cornerRadius(20)

            HStack {
                VStack {
                    Text("\(skillsChallenges.skillType)")
                    Text("\(skillsChallenges.challenge)")
                }.padding()
                    .foregroundColor(.white)

            }
        }.frame(width: 180, height: 160)
        .padding(.leading, 15)
    }
}

struct SkillsBoxRowView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsBoxRowView()
    }
}
