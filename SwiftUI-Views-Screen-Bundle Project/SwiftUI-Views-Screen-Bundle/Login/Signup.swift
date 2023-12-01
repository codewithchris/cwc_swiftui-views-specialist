//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Signup: View {
    @State private var name = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Image("logo")
                    .padding(.top, 40)
                
                Header("Sign Up")
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
                
                Button(action: { self.presentation.wrappedValue.dismiss() }) {
                    Text("Create Account")
                        .padding()
                        .padding(.horizontal)
                        .frame(width: 300)
                        .background(Capsule()
                            .fill(Color.themeAccent)
                            .deepShadow())
                }
                .padding(.top, 20)
                
                Button("Cancel", action: { self.presentation.wrappedValue.dismiss() })
                    .foregroundColor(.themeAccent)
                    .padding(.top, 20)
                
                Spacer()
            }
            .foregroundColor(.themeForeground)
            .padding()
            .navigationBarTitle("Signup.swift", displayMode: .inline)
        }
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
