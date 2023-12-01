//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Onboarding1_3: View {
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 45) {
                Image("onboarding3")
                    .padding(.top)
                
                Spacer()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .padding(24)
                        .background(Circle())
                }
                .padding()
                .background(
                    Circle()
                        .stroke(Color.themeAccent, lineWidth: 4)
                        .rotationEffect(.degrees(-90))
                )
                
            }
            .padding()
            .accentColor(.themeAccent)
        }
    }
}

struct Onboarding1_3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1_3()
            .preferredColorScheme(.dark)
    }
}
