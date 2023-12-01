//
//  ContentView.swift
//  01-HStackLayoutView
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            Circle()
                .frame (width: 50.0, height: 50.0)
            Spacer()
            Circle()
                .frame (width: 50.0, height: 50.0)
            Spacer()
            Circle()
                .frame (width: 50.0,
                        height: 50.0)
            Spacer()
            Circle()
                .frame (width: 50.0, height: 50.0)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
