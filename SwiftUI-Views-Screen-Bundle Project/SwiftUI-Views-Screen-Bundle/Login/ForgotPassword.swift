//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ForgotPassword: View {
    @State private var name = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Image("logo")
                    .padding(.top, 40)
                
                Header("Reset Password")
                    .padding(.vertical, 50)
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.themeSecondary)
                        .font(.headline)
                    TextField("name", text: $name)
                        .foregroundColor(.themeSecondary)
                }
                .modifier(RoundedBorderAndBackground())
                
                Button(action: { self.presentation.wrappedValue.dismiss() }) {
                    Text("Reset My Password")
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
            .navigationBarTitle("ForgotPassword.swift", displayMode: .inline)
        }
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
