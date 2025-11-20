//
//  ContentView.swift
//  You Are Awesome
//
//  Created by BIZARRO, GABRIELA on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 90))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Press Me") {
                let message1 = "You are awesome"
                let message2 = "You are great"
                
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == "image0" ? "image1" : "image0")
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

