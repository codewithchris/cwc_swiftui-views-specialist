//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundGradient: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.themeBackground, .themeSecondary]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            // Content
        }
        .navigationBarTitle("BackgroundGradient.swift", displayMode: .inline)
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradient()
    }
}
