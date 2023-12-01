//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct RoundedBottomRectangle: Shape {
    // How far up or down you want the control point to extend vertically
    var curveOffset: CGFloat = 10
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        // Add a curve as you draw a line to the next point
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.height),
                          control: CGPoint(x: rect.width/2, y: rect.height + curveOffset))
        path.addLine(to: CGPoint(x: 0, y: 0))
        return path
    }
}

struct RoundedBottomRectangle_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            RoundedBottomRectangle(curveOffset: 50)
                .fill(Color.yellow)
                .frame(height: 100)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}
