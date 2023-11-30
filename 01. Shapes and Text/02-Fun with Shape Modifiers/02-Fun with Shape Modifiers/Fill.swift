//
//  Fill.swift
//  02-Fun with Shape Modifiers
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//


import SwiftUI

struct Fill: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.blue)
            
            Circle()
                .fill(.green)
        }
    }
}

#Preview {
    Fill()
}
