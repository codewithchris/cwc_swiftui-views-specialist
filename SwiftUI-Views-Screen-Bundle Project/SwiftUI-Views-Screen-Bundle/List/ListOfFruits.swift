//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ListOfFruits: View {
    let items = Data.getFruits()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Select Row to Shop")
                List(items) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 36)
                        NavigationLink(destination: ProductDetail()) {
                            Text(item.name)
                                .font(.title)
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
        .navigationBarTitle("ListOfFruits.swift", displayMode: .inline)
    }
}

struct ListOfFruits_Previews: PreviewProvider {
    static var previews: some View {
        ListOfFruits()
    }
}
