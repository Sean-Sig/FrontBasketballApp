//
//  TabBarView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selected : Int = 0
    var body: some View {
        TabView(selection: self.$selected) {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.tag(0)
            UpcomingGamesView().tabItem {
                Image(systemName: "calendar")
                Text("Upcoming")
            }.tag(1)
            CreateGameView().tabItem {
                Image(systemName: "plus.circle.fill")
                Text("Create Game")
            }.tag(2)
            ProfileView().tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }.tag(3)
            RankingsView().tabItem {
                Image(systemName: "star.fill")
                Text("Rankings")
            }.tag(4)
            
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}



