//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Browsing3: View {
    @Environment(\.horizontalSizeClass) var hSize
    
    var body: some View {
        ZStack {
            BackgroundLinearGradient()
            
            VStack(alignment: .leading, spacing: self.hSize == .compact ? 16 : 30) {
                Text("All fruit")
                    .font(.largeTitle)
                
                VStack(spacing: 10) {
                    Image("avocado")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                    Text("$18.78")
                        .font(self.hSize == .compact ? .body : .title)
                        .fontWeight(.bold)
                    Text("Big single avocado. Freshly imported fruits from the Mexican avocado collection.")
                        .font(self.hSize == .compact ? .callout : .body)
                    Button(action: {}) {
                        Text("Add to cart")
                            .foregroundColor(.white)
                            .padding()
                            .background(Capsule())
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(SecondaryBackgroundGradient())
                .cornerRadius(20)
                
                Text("Sales")
                    .font(self.hSize == .compact ? .body : .title)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                HStack(spacing: self.hSize == .compact ? 16 : 30) {
                    VStack {
                        Image("avocado")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        Text("$11.28")
                            .font(self.hSize == .compact ? .body : .title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(SecondaryBackgroundGradient())
                    .cornerRadius(20)
                    
                    VStack {
                        Image("avocado")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        Text("$8.88")
                            .font(self.hSize == .compact ? .body : .title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(SecondaryBackgroundGradient())
                    .cornerRadius(20)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(self.hSize == .compact ? 16 : 30)
            .accentColor(.themeAccent)
        }
    }
}

struct Browsing3_Previews: PreviewProvider {
    static var previews: some View {
        Browsing3()
            .preferredColorScheme(.dark)
    }
}
