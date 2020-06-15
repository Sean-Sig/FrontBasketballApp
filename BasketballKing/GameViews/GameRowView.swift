//
//  GameRowView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct GameRowView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                GameInfoBoxView()
            }
        }
    }
}

struct GameRowView_Previews: PreviewProvider {
    static var previews: some View {
        GameRowView()
    }
}
