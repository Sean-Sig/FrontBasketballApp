//
//  SkillsView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/6/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct SkillsView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .leading) {
                    LargeImageView()
                        .frame(height: 200)
                        .clipped()
                    TitleDescriptionView()
                    SkillsContent()
                    
                    HStack {
                        Button(action: {
                            print("Delete tapped!")
                        }) {
                            HStack {
                                Text("Complete!")
                                    .fontWeight(.semibold)
                                    .font(.headline)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(.darkGray), Color(.lightGray)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                        }.padding()
                    }.frame(minWidth: 0, maxWidth: .infinity)
                }
            }
        }
    }
}

struct LargeImageView: View {
    var body: some View {
        Image("Shooting").resizable()
            
    }
}

struct TitleDescriptionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.largeTitle)
                Text("description")
                    .font(.footnote)
            }
            Spacer()
        }.padding()
    }
}

struct SkillsContent: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
            }
            Spacer()
        }.padding()
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView()
    }
}
