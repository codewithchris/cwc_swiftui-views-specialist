//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Onboarding3: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            GeometryReader { gr in
                RadialGradient(gradient: Gradient(colors: [.themeBackground, .themeSecondary]), center: .bottomTrailing, startRadius: 10, endRadius: gr.size.height)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack(spacing: 40) {
                Image("Tasks")
                
                Header("Work Together!")
                
                Text("Collaborate on projects and tasks. We make it effortless for you.")
                
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
                        .fill(Color.themeSecondary)
                        .frame(width: 50)
                    Capsule()
                        .fill(Color.themeTertiary)
                        .frame(width: 50)
                    Spacer()
                    
                    NavigationLink(destination: Login()) {
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

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
