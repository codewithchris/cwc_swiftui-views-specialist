//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Onboarding2_1: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.themeTertiary2
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Button(action: {}) {
                    Text("Skip Onboarding")
                }
            }
            .padding(.bottom, 20)
            
            VStack(spacing: 20) {
                Image(systemName: "flame")
                    .font(.largeTitle)
                    .padding(.top, 50)
                
                Text("New Industries")
                
                Image("onboarding4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                
                Text("BIGGER")
                    .font(.title)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                
                HStack {
                    Image(systemName: "circle.fill")
                    Image(systemName: "circle")
                    Image(systemName: "circle")
                }
                .foregroundColor(.themeSecondary2)
                
                Button(action: {}) {
                    Text("Continue")
                        .foregroundColor(.themeBackground2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Capsule())
                }
                .padding(.horizontal, 40)
                .offset(y: 40)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 30).fill(Color.themeBackground2))
            .edgesIgnoringSafeArea(.top)
            .offset(y: -50)
        }
        .accentColor(.themeAccent2)
    }
}

struct Onboarding2_1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2_1()
            .preferredColorScheme(.dark)
    }
}
