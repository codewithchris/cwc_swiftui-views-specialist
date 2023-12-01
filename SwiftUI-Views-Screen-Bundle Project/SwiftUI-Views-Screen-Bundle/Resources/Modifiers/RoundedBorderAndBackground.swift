//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct RoundedBorderAndBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(8)
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.secondary.opacity(0.2)))
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.themeSecondary.opacity(0.6), lineWidth: 1))
    }
}
