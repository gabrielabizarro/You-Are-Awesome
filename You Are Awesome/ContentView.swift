//
//  ContentView.swift
//  You Are Awesome
//
//  Created by BIZARRO, GABRIELA on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""

    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            
            Button("Press Me") {
                let message1 = "You are awesome"
                let message2 = "You are great"
                if message == message1{
                    message = message2
                    image = "sun.max.fill"
                } else {
                    message = message1
                    image = "hand.thumbsup"
                }
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

