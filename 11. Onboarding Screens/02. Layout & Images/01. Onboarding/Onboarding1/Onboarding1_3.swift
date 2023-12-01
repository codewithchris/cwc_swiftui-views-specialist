//
//  Onboarding1_3.swift
//  01. Onboarding
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Onboarding1_3: View {
    var body: some View {
        VStack(spacing: 60.0) {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
            
            Spacer()
            
            Image("onboarding3")
                .padding(.top)
            
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
    Onboarding1_3()
}
