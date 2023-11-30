//
//  ContentView.swift
//  01-Using Shapes in your UI
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
            // 1. Rectangle
            Rectangle()
            
            // 2. RoundedRectangle
            RoundedRectangle(cornerRadius: 50)
            RoundedRectangle(cornerRadius: 40, style: .circular)
            RoundedRectangle(cornerRadius: 40, style: .continuous)
            
            // 3. Circle
            Circle()
            
            // 4. Ellipse
            Ellipse()
            
            // 5. Capsule
            Capsule()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
