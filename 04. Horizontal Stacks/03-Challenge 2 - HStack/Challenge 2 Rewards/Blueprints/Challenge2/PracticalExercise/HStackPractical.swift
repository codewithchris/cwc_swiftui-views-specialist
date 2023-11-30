//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct HStackPractical: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Title")
                .font(.largeTitle)
            
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 10)
                RoundedRectangle(cornerRadius: 10)
            }
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 10)
                RoundedRectangle(cornerRadius: 10)
            }
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 10)
                RoundedRectangle(cornerRadius: 10)
            }
        }
        .padding(.horizontal)
    }
}

struct HStackPractical_Previews: PreviewProvider {
    static var previews: some View {
        HStackPractical()
    }
}
