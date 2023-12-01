//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct WavyBottomRectangle: Shape {
    // How far up or down you want the curves to extend
    var waveLength: CGFloat = 10
    // Move the waves to the right or left.
    var waveOffsetX: CGFloat = 0
    // Reverse the direction of the waves
    var reverseWaves = false
    
//    var animatableData: CGFloat {
//        get { return waveOffsetX }
//        set { waveOffsetX = newValue }
//    }
    
    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { return AnimatablePair(waveLength, waveOffsetX) }
        set {
            waveLength = newValue.first
            waveOffsetX = newValue.second
        }
    }
    
    // This offset is to help bring the lowest curve to the bottom border of the frame.
    // We want to try to prevent the shape from going outside the frame in case we want to use this shape with the clipShape modifier.
    private let offset: CGFloat = 1.25
    
    func path(in rect: CGRect) -> Path {
        let yWithOffset = (rect.maxY - waveLength * offset)
        
        var path = Path()
        // Start at top left
        path.move(to: .zero)
        // Move to top right
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        
        if reverseWaves {
            // Move to bottom right
            path.addLine(to: CGPoint(x: rect.maxX, y: yWithOffset))
            
            // Add a curve as you draw a line from the right to the mid point
            path.addQuadCurve(to: CGPoint(x: rect.midX - waveOffsetX, y: yWithOffset),
                              control: CGPoint(x: rect.maxX * 0.75 - waveOffsetX, y: (rect.maxY - (rect.maxY - yWithOffset) * 2 - waveLength)))
            
            // Add a curve as you draw a line from the mid point to the left side
            path.addQuadCurve(to: CGPoint(x: 0, y: yWithOffset),
                              control: CGPoint(x: rect.maxX * 0.25 - waveOffsetX, y: (rect.maxY + waveLength)))
        } else {
            // Move to bottom right
            path.addLine(to: CGPoint(x: rect.width, y: yWithOffset))
            
            // Add a curve as you draw a line from the right to the mid point
            path.addQuadCurve(to: CGPoint(x: rect.midX - waveOffsetX, y: yWithOffset),
                              control: CGPoint(x: rect.maxX * 0.75 - waveOffsetX, y: (rect.maxY + waveLength)))
            
            // Add a curve as you draw a line from the mid point to the left side
            path.addQuadCurve(to: CGPoint(x: 0, y: yWithOffset),
                              control: CGPoint(x: rect.maxX * 0.25 - waveOffsetX, y: (rect.maxY - (rect.maxY - yWithOffset) * 2 - waveLength)))
        }
        
        path.closeSubpath()
        
        return path
    }
}

struct WavyBottomRectangle_Previews: PreviewProvider {
    static var previews: some View {
        WavyBottomRectangle()
    }
}
