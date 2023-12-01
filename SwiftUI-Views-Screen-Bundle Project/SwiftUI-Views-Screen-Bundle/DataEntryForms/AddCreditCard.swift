//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct AddCreditCard: View {
    @State private var name = ""
    @State private var card = ""
    @State private var exp = ""
    @State private var ccv = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Image("Wallet")
                    .padding(.vertical, 50)
                
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.themeSecondary)
                        .font(.headline)
                    TextField("name on credit card", text: $name)
                        .foregroundColor(.themeSecondary)
                }
                .modifier(RoundedBorderAndBackground())
                
                HStack {
                    Image(systemName: "creditcard")
                        .foregroundColor(.themeSecondary)
                        .font(.headline)
                    TextField("credit card number", text: $card)
                        .foregroundColor(.themeSecondary)
                }
                .modifier(RoundedBorderAndBackground())
                
                HStack(spacing: 20) {
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.themeSecondary)
                            .font(.headline)
                        TextField("mm/yy", text: $exp)
                            .foregroundColor(.themeSecondary)
                    }
                    .modifier(RoundedBorderAndBackground())
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.themeSecondary)
                            .font(.headline)
                        TextField("ccv", text: $ccv)
                            .foregroundColor(.themeSecondary)
                    }
                    .frame(width: 100)
                    .modifier(RoundedBorderAndBackground())
                }
                
                Button(action: { self.presentation.wrappedValue.dismiss() }) {
                    Text("Done")
                        .padding()
                        .padding(.horizontal)
                        .frame(width: 300)
                        .background(Capsule().fill(Color.themeAccent).deepShadow())
                }
                .padding(.top, 20)
                
                Button("Cancel", action: { self.presentation.wrappedValue.dismiss() })
                    .foregroundColor(.themeAccent)
                    .padding(.top)
                
                Spacer()
            }
            .padding(.horizontal, 40)
        }
        .foregroundColor(.themeForeground)
        .onAppear {
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.themeForeground]
        }
        .navigationBarTitle("AddCreditCard.swift", displayMode: .inline)
    }
}

struct AddCreditCard_Previews: PreviewProvider {
    static var previews: some View {
        AddCreditCard()
            .preferredColorScheme(.dark)
    }
}
