//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct c4_4: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Circle()
                    .fill(Color.secondary)
                    .frame(width: 80, height: 80)
                
                Text("c4_4")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
            }
            .padding(20)
            .padding(.top, 100)
            .background(RoundedRectangle(cornerRadius: 40).fill(Color.secondary))
            
            Spacer()
            
            
            VStack(alignment: .leading, spacing: 20.0) {
                Text("Large Title")
                    .font(.largeTitle)
                
                HStack(spacing: 20) {
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 50, height: 80)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Placeholder")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                }
                HStack(spacing: 20) {
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 50, height: 80)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Placeholder")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                }
                HStack(spacing: 20) {
                    Circle()
                        .fill(Color.secondary)
                        .frame(width: 50, height: 80)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Placeholder")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Body Text")
                    }
                }
                
                Text("Large Title")
                    .font(.largeTitle)
                    .padding(.top)
                
                HStack(spacing: 20.0) {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Title")
                                    .font(.title)
                                    .fontWeight(.medium)
                                Text("Body Text")
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.secondary))
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Title")
                                    .font(.title)
                                    .fontWeight(.medium)
                                Text("Body Text")
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.secondary))
                }
            }
            .padding()
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct c4_4_Previews: PreviewProvider {
    static var previews: some View {
        c4_4()
    }
}
