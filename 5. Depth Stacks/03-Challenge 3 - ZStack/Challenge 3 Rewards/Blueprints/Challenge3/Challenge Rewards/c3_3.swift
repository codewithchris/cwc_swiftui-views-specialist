//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c3_3: View {
    var body: some View {
        VStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .overlay(Text("c3_3").fontWeight(.heavy).font(.largeTitle).padding(.top), alignment: .top)
            
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

struct v1_Previews: PreviewProvider {
    static var previews: some View {
        c3_3()
    }
}
