//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ListOfContacts: View {
    let contacts = Data.getContacts()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Select Row to Shop")
                List(contacts) { item in
                    HStack(spacing: 16) {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .cornerRadius(8)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.themeTertiary, lineWidth: 2))
                        NavigationLink(destination: Text(item.name)) {
                            Text(item.name)
                                .font(.title)
                                .fontWeight(.light)
                                .foregroundColor(.themeSecondary)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
        }
        .onAppear {
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableViewCell.appearance().backgroundColor = UIColor.clear
            UINavigationBar.appearance().backgroundColor = UIColor.themeBackground
        }
        .navigationBarTitle("ListOfContacts.swift", displayMode: .inline)
    }
}

struct ListOfContacts_Previews: PreviewProvider {
    static var previews: some View {
        ListOfContacts()
    }
}
