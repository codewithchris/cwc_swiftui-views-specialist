//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundRandomShapes: View {
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { gr in
                ZStack {
                    ForEach(0...10, id: \.self) { _ in
                        Circle()
                            .foregroundColor(.themeSecondary)
                            .opacity(0.6)
                            .scaleEffect(.random(in: 1...2))
                            .frame(width: .random(in: 50...200),
                                   height: .random(in: 50...200))
                            .position(x: randomCoordinate(max: gr.size.width),
                                      y: randomCoordinate(max: gr.size.height))
                    }
                }
                .blur(radius: 100)
                .drawingGroup()
            }
            .edgesIgnoringSafeArea(.all)
            
            // Content
        }
        .navigationBarTitle("BackgroundRandomShapes.swift", displayMode: .inline)
    }
}

func randomCoordinate(max: CGFloat) -> CGFloat {
    return CGFloat.random(in: 0...max)
}

struct BackgroundRandomShapes_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRandomShapes()
            .preferredColorScheme(.dark)
    }
}
