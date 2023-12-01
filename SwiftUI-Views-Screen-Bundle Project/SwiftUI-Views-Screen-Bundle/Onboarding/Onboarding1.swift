//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Onboarding1: View {
    var body: some View {
        ZStack {
            GeometryReader { gr in
                RadialGradient(gradient: Gradient(colors: [.themeBackground, .themeSecondary]), center: .bottomTrailing, startRadius: 10, endRadius: gr.size.height)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack(spacing: 40) {
                Image("PieChart")
                
                Header("Amazing Charts!")
                
                Text("This app produces really cool things for you to look at.")
                
                Spacer()
                
                HStack {
                    Capsule()
                        .fill(Color.themeTertiary)
                        .frame(width: 50)
                    Capsule()
                        .fill(Color.themeSecondary)
                        .frame(width: 50)
                    Capsule()
                        .fill(Color.themeSecondary)
                        .frame(width: 50)
                    Spacer()
                    NavigationLink(destination: Onboarding2()) {
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
            .navigationBarTitle("Onboarding1.swift", displayMode: .inline)
        }
    }
}

struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1()
    }
}
