//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c2_1: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("c2_1")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding(.top)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 170)

            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
            }
            .frame(height: 170)
            
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
            }
            .frame(height: 85)
        }
        .padding()
    }
}

struct c2_1_Previews: PreviewProvider {
    static var previews: some View {
        c2_1()
    }
}
