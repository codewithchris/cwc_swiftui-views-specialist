//
//  ContentView.swift
//  02-VStack Practical Exercise
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text ("Title")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text ("Body Text Here")
            
            Capsule()
            
            Circle()
            Text ("Placeholder")
            
            Capsule()
            
            RoundedRectangle (cornerRadius: 20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
