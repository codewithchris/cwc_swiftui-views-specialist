//
//  ContentView.swift
//  03-Frames and Padding
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
                .frame(height: 50)
                .padding(.horizontal, 20)
                .padding(.bottom, 80)
            
            Circle()
                .frame(width: 100, height: 100)
            
            Text ("Placeholder")
            
            Capsule()
                .frame(width: 50, height: 10)
                .padding(.top, 50)
            
            RoundedRectangle (cornerRadius: 20)
                .frame(height: 200)
        }
    }
}

#Preview {
    ContentView()
}
