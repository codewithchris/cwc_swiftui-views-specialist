//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundRadialGradient: View {
    var body: some View {
        RadialGradient(gradient: Gradient(colors: [Color.themeBackground, Color.themeBackground2]), center: .bottomTrailing, startRadius: 100, endRadius: 300)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundRadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRadialGradient()
    }
}

