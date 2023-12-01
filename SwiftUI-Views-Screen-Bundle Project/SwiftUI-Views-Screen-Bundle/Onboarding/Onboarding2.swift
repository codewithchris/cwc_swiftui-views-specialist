//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Onboarding2: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            GeometryReader { gr in
                RadialGradient(gradient: Gradient(colors: [.themeBackground, .themeSecondary]), center: .bottomTrailing, startRadius: 10, endRadius: gr.size.height)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack(spacing: 40) {
                Image("Sharing")
                
                Header("Share Pictures!")
                
                Text("Create and share pictures that all of your friends and family will enjoy.")
                
                Spacer()
                
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Circle()
                                .fill(Color.themeAccent)
                                .deepShadow())
                    }
                    
                    Spacer()
                    Capsule()
                        .fill(Color.themeSecondary)
                        .frame(width: 50)
                    Capsule()
                        .fill(Color.themeTertiary)
                        .frame(width: 50)
                    Capsule()
                        .fill(Color.themeSecondary)
                        .frame(width: 50)
                    Spacer()
                    
                    NavigationLink(destination: Onboarding3()) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Circle()
                                .fill(Color.themeAccent)
                                .deepShadow())
                    }
                }
                .frame(height: 20)
            }
            .padding()
            .padding(.top, 40)
            .foregroundColor(.themeForeground)
            .navigationBarTitle("Onboarding2.swift", displayMode: .inline)
        }
    }
}

struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}
