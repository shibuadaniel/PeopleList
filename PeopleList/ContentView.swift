//
//  ContentView.swift
//  PeopleList
//
//  Created by SHIBU DANIEL on 2/25/20.
//  Copyright © 2020 Skie Design Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName)
                .resizable()
                .padding(0.0)
                .aspectRatio(contentMode: .fit)
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle()
                    .stroke(Color.white,lineWidth: 4))
                .shadow(radius: 15)
                .offset(x:0, y:-30)
                .padding(.bottom,-20)
            Text(player.name)
                .font(.system(.largeTitle))
                .foregroundColor(.blue)
                .fontWeight(.black)
                .padding(.bottom, 20)
            StatText(statName: "Age", statValue: "31")
            StatText(statName: "Height", statValue: "6'3\"")
            StatText(statName: "Weight", statValue: "190")
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(player: players[3])
    }
}
