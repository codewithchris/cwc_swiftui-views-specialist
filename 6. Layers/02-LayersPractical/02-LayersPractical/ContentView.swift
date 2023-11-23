//
//  ContentView.swift
//  02-LayersPractical
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
            Text("Tiles - 1")
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 1"))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 2"))
            }
            .frame(height: 200.0)
            
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 3"))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 4"))
            }
            .frame(height: 200.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
