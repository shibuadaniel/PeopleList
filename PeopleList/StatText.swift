//
//  StatText.swift
//  PeopleList
//
//  Created by SHIBU DANIEL on 2/28/20.
//  Copyright © 2020 Skie Design Inc. All rights reserved.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":")
                .fontWeight(.bold)
                .padding(.leading, 50)
                .font(.title)
            Text(statValue)
                .fontWeight(.regular)
                .font(.title)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "31")
    }
}
