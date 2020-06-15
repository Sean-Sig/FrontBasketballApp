//
//  CreateGameView.swift
//  BasketballKing
//
//  Created by Sean Siggard on 6/5/20.
//  Copyright © 2020 Sean Siggard. All rights reserved.
//

import SwiftUI

struct CreateGameView: View {
    @State var receive = false
    @State var date = Date()
    @State var phoneNumber = ""
    @State var address = ""
    @State var gameName = ""
    @State var submit = false
    @State var number = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Game Info")) {
                       TextField("Game Name: ", text: $gameName)
                        Stepper(value: $number, in: 1...50) {
                           Text("Player Limit: \(number)")
                        }
                        DatePicker(selection: $date, label: {
                           Text("Date")
                        })
                    }
                   
                   Section(header: Text("Location")) {
                      TextField("Phone: ", text: $phoneNumber)
                    TextField("Address: ", text: $address)
                    Toggle(isOn: $receive) {
                       Text("Gym Mebership Requried")
                    }
                   }

                    Section(header: Text("Notes")) {
                       TextField("", text: $address)
                        .frame(height: 100)
                    }
                   Button(action: { self.submit.toggle() }) {
                      Text("Submit")
                   }
                }
                .navigationBarTitle("Create Game")
            }
         }
    }
}

struct CreateGameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateGameView()
    }
}
