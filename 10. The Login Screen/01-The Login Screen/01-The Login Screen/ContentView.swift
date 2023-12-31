//
//  ContentView.swift
//  01-The Login Screen
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
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.medium)
            
            HStack {
                VStack {
                    Rectangle().frame(width: 30.0, height: 30.0)
                    Rectangle().frame(width: 30.0, height: 30.0)
                }
                VStack {
                    Rectangle().frame(width: 30.0, height: 30.0)
                    Rectangle().frame(width: 30.0, height: 30.0)
                }
            }
            
            Spacer()
            
            Capsule()
                .frame(height: 50.0)
            
            Capsule()
                .frame(height: 50.0)
            
            Spacer()
            
            Capsule()
                .frame(width: 150.0, height: 50.0)
            
            Text("Forget Password")
            
        }
        .padding(.horizontal)
        .padding(.bottom)
        
    }
}

#Preview {
    ContentView()
}
