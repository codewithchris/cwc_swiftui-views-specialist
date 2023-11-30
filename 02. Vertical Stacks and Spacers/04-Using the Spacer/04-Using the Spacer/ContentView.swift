//
//  ContentView.swift
//  04-Using the Spacer
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
                .padding(.top, 50)
            
            Text ("Body Text Here")
            
            Capsule()
                .frame(height: 50)
                .padding(.horizontal, 20)
            
            Spacer()
            
            Circle()
                .frame(width: 100, height: 100)
            
            Text ("Placeholder")
            
            Spacer()
            
            Capsule()
                .frame(width: 50, height: 10)
                .padding(.top, 50)
            
            RoundedRectangle (cornerRadius: 20)
                .frame(height: 200)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
