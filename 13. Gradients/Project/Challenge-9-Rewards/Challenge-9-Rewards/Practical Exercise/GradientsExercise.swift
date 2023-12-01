// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct GradientsExercise: View {
    let linearGradient = LinearGradient(gradient: Gradient(colors: [.themeSecondary, .themeSecondary2]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    let radialGradient = RadialGradient(gradient:
                                            Gradient(colors: [.themeAccent, .themeAccent2]),
                                        center: .center,
                                        startRadius: 5,
                                        endRadius: 50)
    let shadowRadius: CGFloat = 2
    
    var body: some View {
        ZStack {
            BackgroundLinearGradient()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Title")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.themeForeground)
                
                HStack(spacing: 20) {
                    VStack {
                        Text("")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                    }
                    
                    VStack {
                        Text("")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                    }
                }
                
                HStack(spacing: 20) {
                    Text("")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    Rectangle()
                        .fill(linearGradient).opacity(0.9)
                }
                
                Text("Sub Title")
                    .font(.title)
                    .foregroundColor(.themeForeground)
                    .padding(.top)
                
                HStack(spacing: 20) {
                    VStack(spacing: 15.0) {
                        Text("")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                    }
                    
                    VStack(spacing: 15.0) {
                        Text("")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                    }
                    
                    VStack(spacing: 15.0) {
                        Text("")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                    }
                }
                .frame(height: 100)
                
                Button(action: {}) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background {
                            Capsule()
                                .fill(radialGradient)
                        }
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
        .foregroundColor(.themeBackground)
    }
}

struct Gradients1_Previews: PreviewProvider {
    static var previews: some View {
        GradientsExercise()
    }
}
