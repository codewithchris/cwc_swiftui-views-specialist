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

struct TileModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.largeTitle.weight(.heavy))
            .fontWeight(.bold)
            .foregroundStyle(.red)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tiles-2")
                .modifier(TileModifier())
            
            Spacer()
            
            HStack(spacing: 16.0) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
            }
            .frame(height: 200.0)
            
            HStack(spacing: 16.0) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
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
