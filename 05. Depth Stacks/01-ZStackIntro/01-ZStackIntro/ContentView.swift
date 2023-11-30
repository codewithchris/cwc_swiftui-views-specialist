//
//  ContentView.swift
//  01-ZStackIntro
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.pink
                // This replaced the .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, World")
                    .font(.largeTitle)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
