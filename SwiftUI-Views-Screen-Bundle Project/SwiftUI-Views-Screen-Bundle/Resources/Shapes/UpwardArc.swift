//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct UpwardArc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRelativeArc(center: CGPoint(x: rect.width / 2, y: rect.height),
                            radius: rect.width / 2,
                            startAngle: .degrees(180),
                            delta: .degrees(180))
        
        return path
    }
}

struct UpwardArc_Previews: PreviewProvider {
    static var previews: some View {
        UpwardArc()
            .stroke(Color.red, style: StrokeStyle(lineWidth: 15, lineCap: .round))
            .padding()
    }
}
