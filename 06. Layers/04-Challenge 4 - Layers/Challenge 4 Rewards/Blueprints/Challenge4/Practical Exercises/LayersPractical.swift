//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct LayersPractical: View {
    var body: some View {
        VStack {
            Text("Tiles - 1")
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 1"))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 2"))
            }
            .frame(height: 200.0)
            
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 3"))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 4"))
            }
            .frame(height: 200.0)
        }
        .padding()
    }
}

struct LayersPractical_Previews: PreviewProvider {
    static var previews: some View {
        LayersPractical()
    }
}
