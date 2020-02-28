//
//  StatTest.swift
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
            Text("Age:")
            Text("31")
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        Starttext()
    }
}
