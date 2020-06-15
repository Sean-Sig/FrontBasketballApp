//
//  SwiftUIView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct GameInfoBoxView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color(.lightGray))
                    .frame(height: 200, alignment: .center)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                VStack(alignment: .leading) {
                    Text("Captain").foregroundColor(Color.white.opacity(0.8)).bold()
                    Text("Player Name").foregroundColor(.white).font(Font.title).bold()
                    Spacer()
                    HStack {
                        Text("13284 South Copper Park Drive").foregroundColor(.white)
                        Spacer()
                        Text("5:00PM").foregroundColor(.white).bold()
                    }
                    
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: 5)
    }
}

struct GameInfoBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameInfoBoxView()
        }.previewLayout(.fixed(width: 400, height: 200))
    }
}

