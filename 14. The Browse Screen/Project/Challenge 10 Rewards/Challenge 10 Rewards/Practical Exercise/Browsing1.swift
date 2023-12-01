//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Browsing1: View {
    @Environment(\.horizontalSizeClass) var hSize
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [.themeSecondary, .themeSecondary2]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    let radialGradient = RadialGradient(gradient:
        Gradient(colors: [.themeAccent, .themeAccent2]),
                                        center: .center,
                                        startRadius: 5,
                                        endRadius: 50)
    
    var body: some View {
        ZStack {
            BackgroundLinearGradient()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("My Finances")
                    .font(.largeTitle)
                    .foregroundColor(.themeForeground)
                
                HStack(spacing: 20) {
                    VStack {
                        Image(systemName: "dollarsign.square")
                            .font(.system(size: 80, weight: .thin))
                        Text("Income")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                            .shadow(radius: 8, y: 8))
                    
                    VStack {
                        Image(systemName: "creditcard")
                            .font(.system(size: 80, weight: .thin))
                        Text("Expenses")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                            .shadow(radius: 8, y: 8))
                }
                
                HStack(spacing: 20.0) {
                    Image(systemName: "person.crop.square")
                        .font(.system(size: 80, weight: .thin))
                    Text("Invite a Friend")
                        .font(.title)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(linearGradient)
                        .opacity(0.9)
                        .background(
                            Image("money")
                                .resizable()
                                .aspectRatio(contentMode: .fill))
                        .clipped()
                        .cornerRadius(15)
                        .shadow(radius: 8, y: 8)
                )
                
                Text("Other Actions")
                    .font(.title)
                    .foregroundColor(.themeForeground)
                
                HStack(spacing: 20) {
                    VStack {
                        if hSize == .regular {
                            // iPad
                            Image(systemName: "square.and.arrow.up")
                                .font(.largeTitle)
                                .padding(.bottom)
                            Text("Expenses")
                                .font(.title)
                        } else {
                            // iPhone
                            Image(systemName: "square.and.arrow.up")
                                .font(.title)
                            Text("Expenses")
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .aspectRatio(1, contentMode: .fit)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                            .shadow(radius: 8, y: 8))
                    
                    VStack {
                        if hSize == .regular {
                            // iPad
                            Image(systemName: "square.and.arrow.down")
                                .font(.largeTitle)
                                .padding(.bottom)
                            Text("Request")
                                .font(.title)
                        } else {
                            // iPhone
                            Image(systemName: "square.and.arrow.down")
                                .font(.title)
                            Text("Request")
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .aspectRatio(1, contentMode: .fit)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                            .shadow(radius: 8, y: 8))
                    
                    VStack {
                        if hSize == .regular {
                            // iPad
                            Image(systemName: "clock")
                                .font(.largeTitle)
                                .padding(.bottom)
                            Text("Schedule")
                                .font(.title)
                        } else {
                            // iPhone
                            Image(systemName: "clock")
                                .font(.title)
                            Text("Schedule")
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .aspectRatio(1, contentMode: .fit)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(linearGradient)
                            .shadow(radius: 8, y: 8))
                }
                
                Button(action: {}) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            Capsule()
                                .fill(radialGradient)
                                .shadow(color: .themeAccentShadow, radius: 8, x: 0, y: 8))
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
        .foregroundColor(.themeBackground)
    }
}

struct Browsing1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Browsing1()
            
            Browsing1()
                .preferredColorScheme(.dark)
            
            Browsing1()
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
