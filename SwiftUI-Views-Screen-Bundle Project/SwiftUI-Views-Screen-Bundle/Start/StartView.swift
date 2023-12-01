//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct StartView: View {
    let sections = ScreenData.getSections()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.themeBackground
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Divider() // Prevents rows from going behind the Nav View 🤷‍♂️
                    
                    List {
                        ForEach(sections) { section in
                            Section(header: ScreensListHeaderView(sectionName: section.name)) {
                                ForEach(section.items) { item in
                                    NavigationLink(destination: item.view) {
                                        Text(item.name)
                                    }
                                }
                            }
                        }
                    }
                    .navigationBarTitle("Screens")
                }
            }
        }
        .onAppear {
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableViewHeaderFooterView.appearance().backgroundColor = UIColor.clear
            UITableViewCell.appearance().backgroundColor = UIColor.clear
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

struct ScreensListHeaderView: View {
    var sectionName = ""
    
    var body: some View {
        VStack {
            Image("applogo")
            
            HStack {
                Text(sectionName)
                    .bold()
                    .font(.title)
                    .foregroundColor(.themeSecondary)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 50, alignment: .bottom)
        .background(Color.themeBackground)
        .padding(.horizontal, -20)
    }
}
