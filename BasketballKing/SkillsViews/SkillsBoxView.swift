//
//  SkillsBoxView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct SkillsBoxView: View {
    var body: some View {
                     VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(.lightGray))
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                        VStack {
                            Text("South Jordan ").foregroundColor(.white).font(Font.title).bold()
                            Text("22 Games").foregroundColor(Color.white.opacity(0.8)).bold()
                        }.padding()
                    }
                }.cornerRadius(30).padding().shadow(radius: 5)
    }
}

struct SkillsBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SkillsBoxView()
        }.previewLayout(.fixed(width: 200, height: 200))
        
    }
}
