//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c2_2: View {
    var body: some View {
        VStack {
            Text("c2-2")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            Rectangle()
                .fill(Color.secondary)
                .frame(height: 400)
            
            VStack {
                Capsule()
                    .fill(Color.secondary)
                    .frame(height: 10.0)
                
                HStack(spacing: 20.0) {
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 80)
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 120)
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 80)
                }
                .frame(height: 200)
            }
            .padding()
        }
    }
}

struct c2_2_Previews: PreviewProvider {
    static var previews: some View {
        c2_2()
    }
}
