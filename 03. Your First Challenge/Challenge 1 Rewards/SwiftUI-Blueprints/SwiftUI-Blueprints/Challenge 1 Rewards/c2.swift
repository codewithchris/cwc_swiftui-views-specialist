//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c2: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Welcome back,")
            Text("c2")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 150)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 150)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .frame(height: 150)
            
            Spacer()
            
            Rectangle()
                .fill(Color.secondary)
                .frame(height: 50)
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct c2_Previews: PreviewProvider {
    static var previews: some View {
        c2()
    }
}
