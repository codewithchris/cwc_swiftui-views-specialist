//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c3_1: View {
    var body: some View {
        ZStack {
            Color.secondary
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                Text("c3_1")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 100)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                    .frame(height: 80)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                    .frame(height: 80)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                    .frame(height: 80)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                    .frame(height: 80)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                    .frame(height: 70)
                
                Spacer()
            }
            .padding(.horizontal, 28)
        }
    }
}

struct z1_Previews: PreviewProvider {
    static var previews: some View {
        c3_1()
    }
}
