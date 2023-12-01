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
        VStack(spacing: 60.0) {
            Image("onboarding2")
                .padding(.top)
            
            Spacer()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
            
            Spacer()
            
            Button(action: {}) {
                Text(">")
                    .padding()
                    .background(Circle())
            }
        }
        .padding()
    }
}

#Preview {
    Onboarding1_2()
}
