//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct CurvedBottomRectangle: Shape {
    var curveOffset: CGFloat = 40
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height - curveOffset))
        // Add a curve as you draw a line to the next point
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.height - curveOffset),
                          control: CGPoint(x: rect.width/2, y: rect.height + curveOffset))
        path.addLine(to: CGPoint(x: 0, y: 0))
        return path
    }
}

struct CurvedBottomRectangle_Previews: PreviewProvider {
    static var previews: some View {
        CurvedBottomRectangle()
    }
}
