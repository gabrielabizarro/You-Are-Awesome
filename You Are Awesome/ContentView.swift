//
//  ContentView.swift
//  You Are Awesome
//
//  Created by BIZARRO, GABRIELA on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var messageNumber = 0
    @State private var imageName = ""
    @State private var imageNumber = 0
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
                .multilineTextAlignment(.center)
            
            Spacer()
            
            
            Button("Press Me") {
                let messages = ["I Love You",
                                "I Love Myself",
                                "I Love Us",
                                "I Love Today",
                                "I Love This Image "]
                
                message = messages[messageNumber]
                messageNumber += 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber=0
                }            }
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


