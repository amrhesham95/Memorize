//
//  ContentView.swift
//  Memorize
//
//  Created by Amr Hesham on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }

        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")

            } else {
                RoundedRectangle(cornerRadius: 10.0)
            }
        })

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
