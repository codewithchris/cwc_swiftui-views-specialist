//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct SecondaryBackgroundGradient: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.themeSecondary, .themeSecondary2]), startPoint: .topTrailing, endPoint: .bottomLeading)
    }
}

struct SecondaryBackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryBackgroundGradient()
    }
}
