//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Gradients1: View {
    
    private let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.06274509804, green: 0.5529411765, blue: 0.7803921569, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.937254902, green: 0.5568627451, blue: 0.2196078431, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    private let secondaryGradient = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.937254902, green: 0.5568627451, blue: 0.2196078431, alpha: 1)), Color.secondary]), startPoint: .topTrailing, endPoint: .bottom)
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(self.secondaryGradient)
                    .rotationEffect(.degrees(-50))
                    .offset(x: -gr.size.width * 0.5, y: -gr.size.height * 0.55)
                
                VStack(spacing: 20) {
                    Text("Gradients 1")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(self.secondaryGradient)
                        .frame(width: 125, height: 60)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(self.secondaryGradient)
                        .frame(width: 300, height: 44)
                        .padding(.bottom)
                    
                    HStack(spacing: 25) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(self.secondaryGradient)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(self.secondaryGradient)
                    }
                    HStack(spacing: 25) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(self.secondaryGradient)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(self.secondaryGradient)
                    }
                    HStack(spacing: 25) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(self.secondaryGradient)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(self.secondaryGradient)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct Gradients2_Previews: PreviewProvider {
    static var previews: some View {
        Gradients1()
    }
}
