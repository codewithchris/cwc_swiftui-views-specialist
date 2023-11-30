//
//  Stroke.swift
//  02-Fun with Shape Modifiers
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//


import SwiftUI

struct Stroke: View {
    var body: some View {
        VStack(spacing: 50) {
            // 1. Stroke Only
            RoundedRectangle(cornerRadius: 40)
                .stroke()
            
            // 2. Stroke with line width
            RoundedRectangle(cornerRadius: 40)
                .stroke(.purple, lineWidth: 40)
            
            // 3. Stroke border with line width
            RoundedRectangle(cornerRadius: 40)
                .strokeBorder(.blue, lineWidth: 30)
        }
    }
}

#Preview {
    Stroke()
}
