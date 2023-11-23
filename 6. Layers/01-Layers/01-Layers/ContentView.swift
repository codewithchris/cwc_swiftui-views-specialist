//
//  ContentView.swift
//  01-Layers
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding (50)
            .background (.blue)
            .overlay(
                Rectangle()
                    .fill(.secondary)
                    .frame (height: 40)
                    .overlay(Text ("Hello")),
                alignment: .bottom)
    }
}

#Preview {
    ContentView()
}
