//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct OverlapCurveRectangle: Shape {
    var curve: CGFloat
    var curvesOnTop: Bool
    var curvesOnBottom: Bool

    init(_ curve: CGFloat = 60, curvesOnTop: Bool = true, curvesOnBottom: Bool = true) {
        self.curve = curve
        self.curvesOnTop = curvesOnTop
        self.curvesOnBottom = curvesOnBottom
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        
        if curvesOnTop {
        path.addCurve(to: CGPoint(x: curve, y: curve),
                      control1: CGPoint(x: 0, y: curve/2),
                      control2: CGPoint(x: curve/2, y: curve))
        
        // Line across the top
        path.addLine(to: CGPoint(x: rect.width - curve, y: curve))
        
        // Top trailing curve
        path.addCurve(to: CGPoint(x: rect.width, y: curve * 2),
                      control1: CGPoint(x: rect.width - (curve/2), y: curve),
                      control2: CGPoint(x: rect.width, y: curve + (curve/2)))
        } else {
            // Line across the top
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
        
        
        // Right line down
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        
        if curvesOnBottom {
            // Bottom trailing curve
            path.addCurve(to: CGPoint(x: rect.width - curve, y: rect.height - curve),
                          control1: CGPoint(x: rect.width, y: rect.height - (curve/2)),
                          control2: CGPoint(x: rect.width - (curve/2), y: rect.height - curve))
            
            // Straight Line
            path.addLine(to: CGPoint(x: curve, y: rect.height - curve))
            
            // Bottom leading curve
            path.addCurve(to: CGPoint(x: 0, y: rect.height - (curve * 2)),
                          control1: CGPoint(x: curve/2, y: rect.height - curve),
                          control2: CGPoint(x: 0, y: rect.height - curve * 1.5))
        } else {
            // Straight line
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
        path.closeSubpath()
        return path
    }
}

struct OverlapCurveRectangle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("No curves on top")
            OverlapCurveRectangle(curvesOnTop: false)
            .fill(Color.blue)
                .frame(height: 200)
            Text("Curves on top and bottom")
            OverlapCurveRectangle(40)
                .fill(Color.green)
                .frame(height: 240)
            Spacer()
            Text("No curves on bottom")
            OverlapCurveRectangle(curvesOnBottom: false)
                .fill(Color.yellow)
                .frame(height: 200)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
