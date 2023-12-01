//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Browsing2: View {
    @Environment(\.horizontalSizeClass) var hSize
    
    var body: some View {
        ZStack {
            BackgroundLinearGradient()
            
            VStack(alignment: .leading, spacing: self.hSize == .compact ? 16 : 30) {
                if hSize == .regular {
                // iPad
                    HStack {
                        Text("Choose all topics")
                        Text("that interest you")
                    }
                    .font(Font.system(.largeTitle).weight(.heavy))
                } else {
                    // iPhone
                    VStack {
                        Text("Choose all topics")
                        Text("that interest you")
                    }
                    .font(Font.system(.largeTitle).weight(.heavy))
                }
                
                Text("We recommend you pick 2-6 interests")
                    .font(self.hSize == .compact ? .body : .title)
                
                HStack(spacing: self.hSize == .compact ? 16 : 30) {
                    GeometryReader { gr in
                        VStack {
                            Image("moon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: gr.size.width, height: gr.size.height * 0.7)
                            Spacer()
                            Text("Get Better Sleep")
                                .font(self.hSize == .compact ? .body : .title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(SecondaryBackgroundGradient())
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.themeSecondary2, lineWidth: 5))
                        .cornerRadius(20)
                    }
                    GeometryReader { gr in
                        VStack {
                            Image("water")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: gr.size.width, height: gr.size.height * 0.7)
                            Spacer()
                            Text("Calm Your Mind")
                                .font(self.hSize == .compact ? .body : .title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(SecondaryBackgroundGradient())
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.themeSecondary2, lineWidth: 5))
                        .cornerRadius(20)
                    }
                }
                
                HStack(spacing: self.hSize == .compact ? 16 : 30) {
                    GeometryReader { gr in
                        VStack {
                            Image("flower")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: gr.size.width, height: gr.size.height * 0.7)
                            Spacer()
                            Text("Increase Happiness")
                                .font(self.hSize == .compact ? .body : .title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(SecondaryBackgroundGradient())
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.themeSecondary2, lineWidth: 5))
                        .cornerRadius(20)
                    }
                    GeometryReader { gr in
                        VStack {
                            Image("sunrise")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: gr.size.width, height: gr.size.height * 0.7)
                            Spacer()
                            Text("Morning Meditation")
                                .font(self.hSize == .compact ? .body : .title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(SecondaryBackgroundGradient())
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.themeSecondary2, lineWidth: 5))
                        .cornerRadius(20)
                    }
                }
            }
            .foregroundColor(.themeForeground)
            .padding(self.hSize == .compact ? 16 : 30)
        }
    }
}

struct Browsing2_Previews: PreviewProvider {
    static var previews: some View {
        Browsing2()
            .preferredColorScheme(.dark)
    }
}
