//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Header: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.custom(Theme.mainFontName, size: 36))
            .fontWeight(.thin)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header("My Header Text")
    }
}
