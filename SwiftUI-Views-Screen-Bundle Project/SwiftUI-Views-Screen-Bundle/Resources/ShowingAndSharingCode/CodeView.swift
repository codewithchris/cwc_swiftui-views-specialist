//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct CodeView: View {
    @State private var isSharePresented: Bool = false
    var code: String = """
struct BackgroundSolid: View {
    @State private var presentingSheet = false
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            // Content
        }
    }
}
"""
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20.0) {
                Image(systemName: "doc.text.fill")
                    .font(.largeTitle)
                    .foregroundColor(.themeTertiary)
                    .padding(.top)
                
                Header("Code View")
                
                ScrollView {
                    Text(code)
                        .font(.custom("Menlo", size: 12))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .foregroundColor(Color.themeForeground)
                        .padding()
                }
                .background(Color.themeSecondary)
                
                Button(action: {
                    self.isSharePresented = true
                }) {
                    Text("Share Code")
                        .foregroundColor(.themeForeground)
                        .padding()
                        .padding(.horizontal)
                        .frame(width: 300)
                        .background(Capsule()
                            .fill(Color.themeAccent)
                            .deepShadow())
                }
                .sheet(isPresented: $isSharePresented) {
                    ActivityViewControllerView(activityItems: [self.code])
                }
            }
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView()
    }
}
