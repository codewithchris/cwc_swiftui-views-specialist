//
//  ContentView.swift
//  03-How to Use Text and Their Modifiers
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Using System Font")
                .font(Font.system(.largeTitle, design: .serif))
                .fontWeight(.heavy)
            
            Text("Custom Font 01")
                .font(Font.custom("Avenir Next", size: 44))
                .fontWeight(.thin)
            
            Text("Custom Font 02")
                .font(Font.custom("AppleGothic", size: 44))
                .fontWeight(.regular)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
