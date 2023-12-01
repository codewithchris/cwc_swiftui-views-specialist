//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundRadialGradient: View {
    var body: some View {
        ZStack {
            GeometryReader { gr in
                RadialGradient(gradient: Gradient(colors: [.themeBackground, .themeSecondary]), center: .bottom, startRadius: 10, endRadius: gr.size.height)
                    .edgesIgnoringSafeArea(.all)
            }
            
            // Content
        }
        .navigationBarTitle("BackgroundRadialGradient.swift", displayMode: .inline)

    }
}

struct BackgroundRadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRadialGradient()
    }
}
