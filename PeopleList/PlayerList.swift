//
//  PlayerList.swift
//  PeopleList
//
//  Created by SHIBU DANIEL on 2/28/20.
//  Copyright © 2020 Skie Design Inc. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: ContentView(player: currentPlayer)) {
                    PlayerRow(player: currentPlayer)
                        .frame(height:60)
                }
            }.navigationBarTitle(Text("NBA Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
