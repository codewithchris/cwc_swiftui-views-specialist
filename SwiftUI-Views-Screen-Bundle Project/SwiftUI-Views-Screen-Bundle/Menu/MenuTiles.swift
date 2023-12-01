//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct MenuTiles: View {
    let gradient = RadialGradient(gradient: Gradient(colors: [.themeTertiary, .themeTertiary]), center: .bottomLeading, startRadius: 10, endRadius: 650)
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                Color.themeBackground
                    .edgesIgnoringSafeArea(.all)
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(self.gradient)
                    .rotationEffect(.degrees(-50))
                    .offset(x: -gr.size.width * 0.5, y: -gr.size.height * 0.52)
                
                VStack(spacing: 20) {
                    Header("Categories")
                        .padding(.vertical, 20)
                        .foregroundColor(.black)
                    
                    Text("Which category does your expense fall under?")
                        .foregroundColor(.black)
                        .padding(.bottom, 60)
                    
                    HStack(spacing: 25) {
                        Tile(imageName: "square.grid.2x2.fill", title: "General")
                        Tile(imageName: "tram.fill", title: "Travel")
                    }
                    HStack(spacing: 25) {
                        Tile(imageName: "bolt.fill", title: "Utilities")
                        Tile(imageName: "house.fill", title: "Housing")
                    }
                    HStack(spacing: 25) {
                        Tile(imageName: "book.fill", title: "Education")
                        Tile(imageName: "film.fill", title: "Entertainment")
                    }
                }
                .padding(.horizontal, 20)
            }
            .foregroundColor(.themeForeground)
        }
        .navigationBarTitle("MenuTiles.swift", displayMode: .inline)
    }
}

struct MenuTiles_Previews: PreviewProvider {
    static var previews: some View {
        MenuTiles()
    }
}

struct Tile: View {
    var imageName = ""
    var title = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: imageName)
                .font(.largeTitle)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(Color.themeAccent)
                    .frame(width: 80, height: 80)
                    .deepShadow())
            
            Spacer()
            Text(title)
//                .foregroundColor(.black)
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(RoundedRectangle(cornerRadius: 20)
        .fill(Color.black.opacity(0.4)).deepShadow())
    }
}
