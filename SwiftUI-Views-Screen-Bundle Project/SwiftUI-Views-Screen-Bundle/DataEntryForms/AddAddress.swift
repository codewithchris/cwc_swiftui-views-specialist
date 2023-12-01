//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct AddAddress: View {
    @State private var street = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zip = ""
    @State private var countryIndex = 1
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            Form {
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Section(header: Text("Address").font(.largeTitle)) {
                    HStack(spacing: 20) {
                        Text("Street")
                            .frame(width: 80, alignment: .leading)
                        TextField("Street", text: $street)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack(spacing: 20) {
                        Text("City")
                            .frame(width: 80, alignment: .leading)
                        TextField("City", text: $street)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack(spacing: 20) {
                        Text("State")
                            .frame(width: 80, alignment: .leading)
                        TextField("State", text: $street)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack(spacing: 20) {
                        Text("Zip Code")
                            .frame(width: 80, alignment: .leading)
                        TextField("Zip Code", text: $street)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    Picker(selection: $countryIndex, label: Text("Country")) {
                        Text("Canada").tag(0)
                        Text("United States").tag(1)
                        Text("Mexico").tag(2)
                    }
                }
            }
            .foregroundColor(.themeSecondary)
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableView.appearance().separatorStyle = .none
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            .navigationBarTitle("AddAddress.swift", displayMode: .inline)
        }
    }
}

struct AddAddress_Previews: PreviewProvider {
    static var previews: some View {
        AddAddress()
            .preferredColorScheme(.dark)
    }
}
