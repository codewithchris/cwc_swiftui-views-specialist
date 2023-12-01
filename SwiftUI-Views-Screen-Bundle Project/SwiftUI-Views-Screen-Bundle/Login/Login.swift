//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Login: View {
    @State private var presentingCode = false
    
    @State private var name = ""
    @State private var password = ""
    @State private var showSignupSheet = false
    @State private var showForgotPasswordSheet = false
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Image("logo")
                    .padding(.top, 40)
                
                Header("Login")
                    .padding(.vertical, 50)
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.themeSecondary)
                        .font(.headline)
                    TextField("name", text: $name)
                        .foregroundColor(.themeSecondary)
                }
                .modifier(RoundedBorderAndBackground())
                
                HStack {
                    Image(systemName: "lock")
                        .frame(width: 20)
                        .foregroundColor(.themeSecondary)
                        .font(.headline)
                    SecureField("password", text: $password)
                        .foregroundColor(.themeSecondary)
                }
                .modifier(RoundedBorderAndBackground())
                
                Button(action: { }) {
                    Text("Login")
                        .padding()
                        .padding(.horizontal)
                        .frame(width: 300)
                        .background(Capsule()
                            .fill(Color.themeAccent)
                            .deepShadow())
                }
                .padding(.top, 20)
                
                Button("Sign up", action: { self.showSignupSheet = true })
                    .foregroundColor(.themeAccent)
                    .sheet(isPresented: $showSignupSheet) { Signup() }
                    .padding(.top)
                
                Spacer()
                
                Button("Forgot Password?", action: { self.showForgotPasswordSheet = true })
                    .foregroundColor(.themeAccent)
                    .sheet(isPresented: $showForgotPasswordSheet) { ForgotPassword() }
            }
            .foregroundColor(.themeForeground)
            .padding()
            .navigationBarTitle("Login.swift", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                    self.presentingCode = true
                }, label: {
                    Image(systemName: "doc.text")
                })
            )
                .sheet(isPresented: $presentingCode) {
                    CodeView(code: self.thisCode)
            }
        }
    }
    
    var thisCode = """
@State private var name = ""
@State private var password = ""
@State private var showSignupSheet = false
@State private var showForgotPasswordSheet = false

var body: some View {
    ZStack {
        Color.themeBackground
            .edgesIgnoringSafeArea(.all)
        
        VStack(spacing: 20) {
            Image("logo")
                .padding(.top, 40)
            
            Header("Login")
                .padding(.vertical, 50)
            
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.themeSecondary)
                    .font(.headline)
                TextField("name", text: $name)
                    .foregroundColor(.themeSecondary)
            }
            .modifier(RoundedBorderAndBackground())
            
            HStack {
                Image(systemName: "lock")
                    .frame(width: 20)
                    .foregroundColor(.themeSecondary)
                    .font(.headline)
                SecureField("password", text: $password)
                    .foregroundColor(.themeSecondary)
            }
            .modifier(RoundedBorderAndBackground())
            
            Button(action: { }) {
                Text("Login")
                    .padding()
                    .padding(.horizontal)
                    .frame(width: 300)
                    .background(Capsule()
                        .fill(Color.themeAccent)
                        .deepShadow())
            }
            .padding(.top, 20)
            
            Button("Sign up", action: { self.showSignupSheet = true })
                .foregroundColor(.themeAccent)
                .sheet(isPresented: $showSignupSheet) { Signup() }
                .padding(.top)
            
            Spacer()
            
            Button("Forgot Password?", action: { self.showForgotPasswordSheet = true })
                .foregroundColor(.themeAccent)
                .sheet(isPresented: $showForgotPasswordSheet) { ForgotPassword() }
        }
        .foregroundColor(.themeForeground)
        .padding()
        .navigationBarTitle("Login.swift", displayMode: .inline)
    }
}
"""
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
