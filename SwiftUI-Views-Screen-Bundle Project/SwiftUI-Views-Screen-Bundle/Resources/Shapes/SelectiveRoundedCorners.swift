//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct SelectiveRoundedCorners: Shape {
    let cornerRadius: CGFloat
    let corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

struct SelectiveRoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        SelectiveRoundedCorners(cornerRadius: 40, corners: [.bottomLeft, .topRight])
            .padding(50)
    }
}
