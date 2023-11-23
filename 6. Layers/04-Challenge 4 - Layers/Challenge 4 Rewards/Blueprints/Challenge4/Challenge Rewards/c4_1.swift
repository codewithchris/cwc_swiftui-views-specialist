//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c4_1: View {
    var body: some View {
        ZStack {
            Color.secondary
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.secondary)
                    .overlay(Text("c4_1").fontWeight(.heavy).font(.largeTitle).padding(.top), alignment: .top)
                
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
                        .aspectRatio(1, contentMode: .fit)
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.secondary)
                        .aspectRatio(1, contentMode: .fit)
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.secondary)
                        .aspectRatio(1, contentMode: .fit)
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.secondary)
                        .aspectRatio(1, contentMode: .fit)
                }
                //                .frame(height: 85)
            }
            .padding()
        }
    }
}

struct c4_1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            c4_1()
                .previewDevice("iPhone SE (2nd generation)")
            
            c4_1()
        }
    }
}
