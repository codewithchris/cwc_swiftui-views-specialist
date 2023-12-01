//
//  ContentView.swift
//  BackgroundShapes
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
            Text("Tiles-2")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            HStack(spacing: 16.0) {
                TileView()
                TileView()
            }
            .frame(height: 200.0)
            
            HStack(spacing: 16.0) {
                TileView()
                TileView()
            }
            .frame(height: 200.0)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}


