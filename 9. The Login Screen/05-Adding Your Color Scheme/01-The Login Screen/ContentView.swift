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
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.themeForeground)
                    .padding(.bottom)
                
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
                .rotationEffect(.degrees(45))
                .foregroundColor(.themeSecondary)
                
                
                Spacer()
                
                TextField("username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
                
                Button(action: {}) {
                    Text("Button")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 150)
                        .background(Capsule())
                }
                
                Text("Forget Password")
                
            }
            .padding(.horizontal)
            .padding(.bottom)
            
        }
        .accentColor(.themeAccent)
    }
}

#Preview {
    ContentView()
}
