//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ListOfPeople: View {
    let people = Data.getContacts()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("My Favorites")
                    .font(.custom("Gill Sans", size: 36))
                    .fontWeight(.thin)
                List(people) { person in
                    RowView(person: person)
                }
            }
        }
        .onAppear {
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableView.appearance().separatorStyle = UITableViewCell.SeparatorStyle.none
            UITableViewCell.appearance().backgroundColor = UIColor.clear
            UINavigationBar.appearance().backgroundColor = UIColor.themeBackground
        }
    }
}

struct ListOfPeople_Previews: PreviewProvider {
    static var previews: some View {
        ListOfPeople()
    }
}

struct RowView: View {
    let person: Item
    
    var body: some View {
        HStack(spacing: 0.0) {
            SelectiveRoundedCorners(cornerRadius: 6, corners: [.topLeft, .bottomLeft])
                .fill(Color.themeTertiary)
                .frame(width: 10.0)
            
            HStack {
                Image(person.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50.0, height: 50.0)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Text(person.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .background(RoundedRectangle(cornerRadius: 6).fill(Color.secondary))
    }
}
