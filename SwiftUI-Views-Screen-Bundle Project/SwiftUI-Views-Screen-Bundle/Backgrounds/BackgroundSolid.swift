//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BackgroundSolid: View {
    @State private var presentingCode = false
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            // Content
        }
        .navigationBarTitle("BackgroundSolid.swift", displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: {
                self.presentingCode = true
            }, label: {
                Image(systemName: "doc.text")
            })
        )
            .sheet(isPresented: $presentingCode) {
                CodeView(code: self.thisCode)
        }
    }
    
    var thisCode = """
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
}

struct BackgroundSolid_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundSolid()
    }
}
