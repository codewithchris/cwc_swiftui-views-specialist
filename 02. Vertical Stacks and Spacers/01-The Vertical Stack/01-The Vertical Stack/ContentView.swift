//
//  ContentView.swift
//  01-The Vertical Stack
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 40.0) {
            Text ("Hello, World!")
            Text ("Hello, World!")
            Text ("Hello, World!")
            Rectangle()
            Text ("Hello, World!")
            Text ("Hello, World!")
            RoundedRectangle (cornerRadius: 20)
            Text ("Hello, World!")
            Text ("Hello, World!")
            // 10th View
            VStack {
                Text ("Hello, World!")
                Text("Hello, World!")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
