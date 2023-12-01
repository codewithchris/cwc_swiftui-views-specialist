//
//  Onboarding1_2.swift
//  01. Onboarding
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Onboarding1_2: View {
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            VStack(spacing: 45.0) {
                Image("onboarding2")
                    .padding(.top)
                
                Spacer()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .padding(24)
                        .background(Circle())
                }
                .padding()
                .background(
                    Circle()
                        .trim(from: 0, to: 0.66)
                        .stroke(Color.themeAccent, lineWidth: 4)
                        .rotationEffect(.degrees(-90))
                )
            }
            .padding()
        }
    }
}

#Preview {
    Onboarding1_2()
}
