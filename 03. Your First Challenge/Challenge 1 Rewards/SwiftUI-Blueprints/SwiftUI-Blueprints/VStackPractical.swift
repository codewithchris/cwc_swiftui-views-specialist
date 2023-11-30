//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct VStackPractical: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Body Text Here")
            
            Capsule()
                .frame(height: 50)
                .padding(.horizontal, 20)
                .padding(.bottom, 80)
            
            Circle()
                .frame(width: 100.0, height: 100.0)
            
            Text("Placeholder")
            
            Capsule()
                .frame(width: 50.0, height: 10.0)
                .padding(.top, 50.0)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200.0)
        }
    }
}

struct VStackPractical_Previews: PreviewProvider {
    static var previews: some View {
        VStackPractical()
    }
}
