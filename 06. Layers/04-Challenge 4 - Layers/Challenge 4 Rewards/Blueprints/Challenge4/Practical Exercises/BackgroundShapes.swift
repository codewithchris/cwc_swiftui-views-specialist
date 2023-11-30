//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundShapes: View {
    var body: some View {
        VStack {
            Text("Tiles-2")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            HStack(spacing: 16.0) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
            }
            .frame(height: 200.0)
            
            HStack(spacing: 16.0) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Sub text")
                            .font(.caption)
                        Spacer()
                    }
                    
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 40.0, height: 40.0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
            }
            .frame(height: 200.0)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct BackgroundShapes_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundShapes()
    }
}
