//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c1: View {
    var myvariable = 1
    var body: some View {
        VStack(spacing: 14) {
            Text("c1")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Circle()
                .fill(Color.secondary)
                .padding(.vertical)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 100)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 100)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 100)
        }
        .padding()
    }
}

struct c1_Previews: PreviewProvider {
    static var previews: some View {
        c1()
    }
}
