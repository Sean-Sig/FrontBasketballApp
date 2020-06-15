//
//  ContentView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var showContent = false

    var profileButton: some View {
        Button(action: { self.showContent.toggle() }) {
            Image(systemName: "gear")
                .imageScale(.large)
                .accessibility(label: Text("User Settings"))
                .padding()
            
        }
    }
        
    var body: some View {
        NavigationView {
            List {
                CurrentState()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
                
                CityPlayersRowView()
                .listRowInsets(EdgeInsets())
                
                SkillsBoxRowView()
                .listRowInsets(EdgeInsets())
                
            }.environment(\.defaultMinListRowHeight, 10)
            .navigationBarTitle("Games")
            .navigationBarItems(
                  trailing: profileButton
            )
            .sheet(isPresented: self.$showContent) {
                SettingsView()
            }
            .onAppear {
             UITableView.appearance().separatorStyle = .none
            }
        }
    }
}

struct CurrentState: View {
    var body: some View {
        Image("Image").resizable()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
