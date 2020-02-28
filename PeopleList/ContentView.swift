//
//  ContentView.swift
//  PeopleList
//
//  Created by SHIBU DANIEL on 2/25/20.
//  Copyright © 2020 Skie Design Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("gs")
                .resizable()
                .padding(0.0)
                .aspectRatio(contentMode: .fit)
            Image("steph")
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle()
                    .stroke(Color.white,lineWidth: 4))
                .shadow(radius: 15)
                .offset(x:0, y:-30)
                .padding(.bottom,-20)
            Text("Steph Curry")
                .font(.title)
                .fontWeight(.medium)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
