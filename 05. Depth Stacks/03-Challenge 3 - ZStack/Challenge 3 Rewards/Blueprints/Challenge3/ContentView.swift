//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            VStack {
                Text("Hello, World!")
                    .font(.title)
                
                Spacer()
                
                Text("Line 2")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .border(Color.red)
            .padding()
            .background(RoundedRectangle(cornerRadius: 50).fill(Color.secondary))
            
            HStack {
                VStack {
                    Text("Hello, World!")
                        .font(.title)
                    
                    Spacer()
                    
                    Text("Line 2")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .border(Color.red)
                .padding()
                .background(RoundedRectangle(cornerRadius: 50).fill(Color.secondary))
                
                VStack {
                    Text("Hello, World!")
                        .font(.title)
                    
                    Spacer()
                    
                    Text("Line 2")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .border(Color.red)
                .padding()
                .background(RoundedRectangle(cornerRadius: 50).fill(Color.secondary))
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
        }
    }
}
