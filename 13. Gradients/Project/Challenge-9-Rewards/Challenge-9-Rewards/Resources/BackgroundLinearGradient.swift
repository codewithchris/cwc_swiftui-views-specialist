//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundLinearGradient: View {
    let gradientColors = Gradient(colors: [.themeBackground, .themeBackground2])
    var body: some View {
        LinearGradient(gradient: gradientColors,
                       startPoint: UnitPoint(x: 0, y: 0.25),
                       endPoint: UnitPoint(x: 1, y: 0.75))
            .ignoresSafeArea()
    }
}

struct BackgroundLinearGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundLinearGradient()
            .preferredColorScheme(.dark)
    }
}
