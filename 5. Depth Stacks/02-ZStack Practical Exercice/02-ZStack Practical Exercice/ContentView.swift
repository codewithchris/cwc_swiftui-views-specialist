//
//  ContentView.swift
//  02-ZStack Practical Exercice
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Title")
                    .font(.largeTitle)
                
                HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                
                Text("Sub Text")
                    .font(.title)
                
                HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                .frame(height: 100)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
