//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

public extension View {
    func deepShadow() -> some View {
        self
            .shadow(radius: 10, y: 10)
    }
}

struct ShapeExtension_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.blue)
            .deepShadow()
            .frame(width: 125, height: 125)
    }
}
