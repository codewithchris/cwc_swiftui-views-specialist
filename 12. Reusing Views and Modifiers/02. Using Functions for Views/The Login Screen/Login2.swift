//
//  Login2.swift
//  The Login Screen
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Login2: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .ignoresSafeArea()
            
            VStack {
                Text("Login Screen 1")
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
                
                Group {
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.themeSecondary)
                            .frame(width: 20.0)
                        TextField("username", text: $username)
                    }
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    HStack {
                        Image(systemName: "lock.shield.fill")
                            .foregroundColor(.themeSecondary)
                            .frame(width: 20.0)
                        SecureField("password", text: $password)
                    }
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
                .frame(maxWidth: 400.0)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Button")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 150)
                        .background(Capsule())
                }
                Button(action: {}) {
                    Text("Forget Password")
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            
        }
        .accentColor(.themeAccent)
    }
}

#Preview {
    Login2()
}
