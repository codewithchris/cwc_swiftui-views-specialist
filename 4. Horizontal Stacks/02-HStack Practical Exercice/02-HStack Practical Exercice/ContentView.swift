//
//  ContentView.swift
//  02-HStack Practical Exercice
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Title")
                .font(.largeTitle)
            
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 10)
                RoundedRectangle(cornerRadius: 10)
            }
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 10)
                RoundedRectangle(cornerRadius: 10)
            }
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 10)
                RoundedRectangle(cornerRadius: 10)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
