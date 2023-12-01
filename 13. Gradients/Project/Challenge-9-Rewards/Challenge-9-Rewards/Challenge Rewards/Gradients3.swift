//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Gradients3: View {
    private let linearGradient = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09795854845, green: 0.4175800082, blue: 0.5042937399, alpha: 1)), Color(#colorLiteral(red: 0.4431372549, green: 0.6980392157, blue: 0.5019607843, alpha: 1))]), startPoint: .leading, endPoint: .bottomTrailing)
    
    var body: some View {
        ZStack {
            linearGradient
                .ignoresSafeArea()
            
            VStack {
                Text("Gradients 3")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                
                HStack(spacing: 16.0) {
                    TileView()
                    TileView()
                }
                .frame(height: 200.0)
                
                HStack(spacing: 16.0) {
                    TileView()
                    TileView()
                }
                .frame(height: 200.0)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct Gradient3_Previews: PreviewProvider {
    static var previews: some View {
        Gradients3()
    }
}

struct TileView: View {
    private let shapeGradient = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09795854845, green: 0.4175800082, blue: 0.5042937399, alpha: 1)), Color(#colorLiteral(red: 0.4431372549, green: 0.6980392157, blue: 0.5019607843, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    private let shapeGradient2 = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09795854845, green: 0.4175800082, blue: 0.5042937399, alpha: 1)), Color(#colorLiteral(red: 0.4431372549, green: 0.6980392157, blue: 0.5019607843, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Sub text 1")
                
                Spacer()
            }
            .font(.caption)
            
            Circle()
                .fill(Color(#colorLiteral(red: 0.4431372549, green: 0.6980392157, blue: 0.5019607843, alpha: 1)))
                .frame(width: 40.0, height: 40.0)
                .opacity(0.5)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .fill(shapeGradient2)
        }
    }
}
