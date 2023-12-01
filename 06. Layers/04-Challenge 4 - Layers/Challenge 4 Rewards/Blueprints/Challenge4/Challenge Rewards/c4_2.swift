//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c4_2: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("c4_2")
                .fontWeight(.heavy)
                .font(.largeTitle)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .overlay(
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.secondary)
                            .padding()
                            .frame(width: 150)
                        
                        Text("Title")
                            .font(.title)
                    }
                    , alignment: .leading)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .overlay(
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.secondary)
                            .padding()
                            .frame(width: 150)
                        
                        Text("Title")
                            .font(.title)
                    }
                    , alignment: .leading)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .overlay(
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.secondary)
                            .padding()
                            .frame(width: 150)
                        
                        Text("Title")
                            .font(.title)
                    }
                    , alignment: .leading)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
                .overlay(
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.secondary)
                            .padding()
                            .frame(width: 150)
                        
                        Text("Title")
                            .font(.title)
                    }
                    , alignment: .leading)
            
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary)
            }
            .frame(height: 85)
        }
        .padding()
    }
}

struct c4_2_Previews: PreviewProvider {
    static var previews: some View {
        c4_2()
    }
}
