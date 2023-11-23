//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c4_3: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("c4_3")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            HStack(spacing: 20) {
                VStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Title")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 150.0)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                    
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Title")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                }
                
                VStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Title")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                    
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Title")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 150.0)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
                }
            }
            .frame(height: 400)
            
            VStack(spacing: 20) {
                Spacer()
                Text("Title")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Body Text")
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 150.0)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
        }
        .padding(.horizontal)
        
    }
}

struct c4_3_Previews: PreviewProvider {
    static var previews: some View {
        c4_3()
    }
}
