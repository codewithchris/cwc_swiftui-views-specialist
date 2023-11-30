//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c3_2: View {
    var body: some View {
        ZStack {
            Color.secondary
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("c3_2")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                HStack(spacing: 30) {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.secondary)
                }
                .frame(height: 80.0)
                .padding(.horizontal, 20)
                
                RoundedRectangle(cornerRadius: 24)
                    .fill(Color.secondary)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct z2_Previews: PreviewProvider {
    static var previews: some View {
        c3_2()
    }
}
