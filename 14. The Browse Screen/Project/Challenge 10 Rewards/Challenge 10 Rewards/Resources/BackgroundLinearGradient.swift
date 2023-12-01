//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundLinearGradient: View {
//    let gradientColors = Gradient(stops: [Gradient.Stop(color: Color.themeBackground, location: 0.75),
//                                          Gradient.Stop(color: Color.themeBackground2, location: 1)])
    
    let gradientColors = Gradient(colors: [.themeBackground, .themeBackground2])
    var body: some View {
        LinearGradient(gradient: gradientColors,
                       startPoint: UnitPoint(x: 0, y: 0.25),
                       endPoint: UnitPoint(x: 1, y: 0.75))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundLinearGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundLinearGradient()
            .preferredColorScheme(.dark)
    }
}
