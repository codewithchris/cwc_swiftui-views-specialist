//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ZStackPractical: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Title")
                    .font(.largeTitle)
                
                HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                
                Text("Sub Text")
                    .font(.title)
                
                HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                .frame(height: 100)
            }
            .padding(.horizontal)
        }
    }
}

struct ZStackPractical_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPractical()
//            .preferredColorScheme(.dark)
    }
}
