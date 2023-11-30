//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c2_3: View {
    var body: some View {
        VStack {
            Text("c2-3")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            VStack(spacing: 40) {
                Spacer()
                Spacer()
                
                HStack(spacing: 30) {
                    Circle()
                        .fill(Color.secondary)
                    Circle()
                        .fill(Color.secondary)
                    Circle()
                        .fill(Color.secondary)
                }
                .frame(height: 70)
                
                HStack(spacing: 30) {
                    Circle()
                        .fill(Color.secondary)
                    Circle()
                        .fill(Color.secondary)
                    Circle()
                        .fill(Color.secondary)
                }
                .frame(height: 70)
                
                HStack(spacing: 30) {
                    Circle()
                        .fill(Color.secondary)
                    Circle()
                        .fill(Color.secondary)
                    Circle()
                        .fill(Color.secondary)
                }
                .frame(height: 70)
                
                HStack(spacing: 30) {
                    Circle()
                        .fill(Color.clear)
                    Circle()
                        .fill(Color.secondary)
                    Rectangle()
                        .fill(Color.secondary)
                }
                .frame(height: 70)
                
                Spacer()
                
                Text("Body Text")
                
                Spacer()
            }
            .padding(.horizontal, 50)
        }
    }
}

struct c2_3_Previews: PreviewProvider {
    static var previews: some View {
        c2_3()
    }
}
