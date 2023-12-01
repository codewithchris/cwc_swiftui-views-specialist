//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Blob: Shape {
    func path(in rect: CGRect) -> Path {
        let startPoint = CGPoint(x: rect.width * 0.65, y: 0)
        
        var path = Path()
        path.move(to: startPoint)
        path.addCurve(to: CGPoint(x: rect.width, y: rect.height/2),
                      control1: CGPoint(x: rect.width * 0.85, y: 0),
                      control2: CGPoint(x: rect.width, y: rect.height * 0.1))
        path.addCurve(to: CGPoint(x: rect.width / 2, y: rect.height),
                      control1: CGPoint(x: rect.width, y: rect.height * 0.9),
                      control2: CGPoint(x: rect.width * 0.75, y: rect.height))
        path.addCurve(to: CGPoint(x: 0, y: rect.height * 0.7),
                      control1: CGPoint(x: rect.width * 0.35, y: rect.height),
                      control2: CGPoint(x: 0, y: rect.height))
        path.addCurve(to: CGPoint(x: rect.width * 0.3, y: rect.height * 0.3),
                      control1: CGPoint(x: 0, y: rect.height * 0.4),
                      control2: CGPoint(x: rect.width * 0.17, y: rect.height * 0.45))
        path.addCurve(to: startPoint,
                      control1: CGPoint(x: rect.width * 0.42, y: rect.height * 0.16),
                      control2: CGPoint(x: rect.width * 0.46, y: 0))
        
        return path
    }
}

struct Blob_Previews: PreviewProvider {
    static var previews: some View {
        Blob()
    }
}
