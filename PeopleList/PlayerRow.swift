//
//  PlayerRow.swift
//  PeopleList
//
//  Created by SHIBU DANIEL on 2/28/20.
//  Copyright © 2020 Skie Design Inc. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
 
    var body: some View {
        HStack {
            Image(player.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80.0)
                .clipShape(Circle()).background(Circle()).foregroundColor(player.team.color)
                .overlay(Circle()
                    .stroke(Color.white,lineWidth: 2
                ))
                .shadow(radius: 15)
                .padding(.leading,10)
            Text(player.name)
                .fontWeight(.medium)
                .font(.title)
                .foregroundColor(.blue)
                .padding(.leading, 10)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0])
                .previewLayout(.fixed(width: 500, height: 100))
    }
}
