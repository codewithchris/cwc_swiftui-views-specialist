//
//  Inset.swift
//  02-Fun with Shape Modifiers
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Inset: View {
    var body: some View {
        VStack {
            Capsule()
                .inset(by: 20)
                .stroke(.purple, lineWidth: 40)
        }
    }
}

#Preview {
    Inset()
}
