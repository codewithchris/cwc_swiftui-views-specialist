//
//  Login1.swift
//  01-The Login Screen
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Login1: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            background
            
            VStack {
                title(text: "Login Screen 1")
                logo
                Spacer()
                title(text: "Please login")
                userNameAndPassword
                Spacer()
                loginButton
                forgotPassword
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
        .accentColor(.themeAccent)
    }
    
    private var background: some View {
        Color.themeBackground
            .ignoresSafeArea()
    }
    
    private func title(text: String) -> some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.medium)
            .foregroundStyle(Color.themeForeground)
            .padding(.bottom)
    }
    
    private var logo: some View {
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
    }
    
    private var userNameAndPassword: some View {
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
    }
    
    private var loginButton: some View {
        Button(action: {}) {
            Text("Login")
                .foregroundStyle(.white)
                .padding()
                .frame(width: 150)
                .background(Capsule())
        }
    }
    
    private var forgotPassword: some View {
        Button(action: {}) {
            Text("Forgot Password")
        }
    }
}

#Preview {
    Login1()
}
