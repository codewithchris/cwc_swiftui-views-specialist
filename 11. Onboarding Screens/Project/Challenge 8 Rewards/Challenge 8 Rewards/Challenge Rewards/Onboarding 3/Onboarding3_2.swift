//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Onboarding3_2: View {
    var body: some View {
        ZStack {
            Color.themeBackground2
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Circle()
                    .offset(x: -200, y: -200)
                Circle()
                    .offset(x: 150, y: 180)
            }
            .foregroundColor(.themeSecondary2)
            .opacity(0.9)
            
            VStack(spacing: 20.0) {
                Image("onboarding5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                
                Text("Locate The Route")
                    .font(Font.title.weight(.medium))
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                
                Button(action: {}) {
                    Text("Next")
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color.themeAccent2))
                }
                
                HStack {
                    Image(systemName: "circle.fill")
                    Image(systemName: "circle.fill")
                        .foregroundColor(.themeAccent2)
                    Image(systemName: "circle.fill")
                }
                .font(.caption)
                .foregroundColor(.themeSecondary2)
            }
        }
    }
}

struct Onboarding3_2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3_2()
            .preferredColorScheme(.dark)
    }
}
