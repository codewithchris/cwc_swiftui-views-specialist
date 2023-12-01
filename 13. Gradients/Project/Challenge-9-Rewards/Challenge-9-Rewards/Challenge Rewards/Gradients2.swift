//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Gradients2: View {
    
    private let radialBackground = RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8823529412, green: 0.9333333333, blue: 0.7647058824, alpha: 1)), Color(#colorLiteral(red: 0.9411764706, green: 0.3137254902, blue: 0.3254901961, alpha: 1))]),
                                                  center: .bottomLeading,
                                                  startRadius: 200, endRadius: 750)
    
    private let shapeRadial = RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8823529412, green: 0.9333333333, blue: 0.7647058824, alpha: 1)), Color(#colorLiteral(red: 0.9411764706, green: 0.3137254902, blue: 0.3254901961, alpha: 1))]),
                                             center: .topTrailing,
                                             startRadius: 190, endRadius: 280)
    
    private let radialGradient = RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8823529412, green: 0.9333333333, blue: 0.7647058824, alpha: 1)), Color(#colorLiteral(red: 0.9411764706, green: 0.3137254902, blue: 0.3254901961, alpha: 1))]),
                                                center: .center,
                                                startRadius: 5, endRadius: 150)
    
    var body: some View {
        ZStack {
            radialBackground
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Gradients 2")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Circle()
                    .fill(shapeRadial)
                    .frame(height: 200)
                
                Spacer()
                
                Rectangle()
                    .fill(Color.secondary)
                    .frame(height: 50)
                
                Rectangle()
                    .fill(Color.secondary)
                    .frame(height: 50)
                
                Capsule()
                    .fill(radialGradient)
                    .frame(height: 50)
                    .overlay {
                        Capsule()
                            .stroke(Color(#colorLiteral(red: 0.9411764706, green: 0.3137254902, blue: 0.3254901961, alpha: 1)), lineWidth: 2)
                    }
                    .padding(.top, 40)
                
                Spacer()
            }
            .padding(40)
        }
    }
}

struct Gradients3_Previews: PreviewProvider {
    static var previews: some View {
        Gradients2()
    }
}
