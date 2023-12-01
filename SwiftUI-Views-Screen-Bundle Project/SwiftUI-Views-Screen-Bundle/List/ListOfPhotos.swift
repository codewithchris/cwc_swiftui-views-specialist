//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ListOfPhotos: View {
    let fruits = Data.getFruits()
    let contacts = Data.getContacts()
    let places = Data.getPlaces()
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Divider() // A view is needed to prevent rows from showing up above the nav bar when scrolling (SwiftUI bug)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text("Contacts")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, -10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(contacts) { contact in
                                VStack(alignment: .leading) {
                                    Image(contact.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 200, height: 200)
                                        .cornerRadius(20)
                                        .shadow(radius: 5, y: 4)
                                    Text(contact.name)
                                }
                                .padding(.leading, 7)
                            }
                        }
                    }
                    .padding(.bottom)
                    
                    Text("Places")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, -10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(places) { place in
                                VStack(alignment: .leading) {
                                    Image(place.city)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 200)
                                        .cornerRadius(20)
                                        .shadow(radius: 5, y: 4)
                                    Text(place.city)
                                    Text(place.country)
                                        .font(.footnote)
                                }
                                .padding(.leading, 7)
                            }
                        }
                    }
                    .padding(.bottom)
                    
                    Text("Favorite Foods")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, -10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(self.fruits) { fruit in
                                VStack(alignment: .leading) {
                                    Image(fruit.name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                                        .frame(width: 200, height: 200)
                                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.themeTertiary))
                                        .shadow(radius: 5, y: 4)
                                    Text(fruit.name)
                                }
                                .padding(.leading, 7)
                            }
                        }
                    }
                    .padding(.bottom)
                }
                .foregroundColor(.themeForeground)
                .padding(.horizontal)
            }
        }
        .onAppear {
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableViewCell.appearance().backgroundColor = UIColor.clear
            UINavigationBar.appearance().backgroundColor = UIColor.themeBackground
        }
        .navigationBarTitle("ListOfPhotos.swift", displayMode: .inline)
    }
}


struct ListOfPhotos_Previews: PreviewProvider {
    static var previews: some View {
        ListOfPhotos()
    }
}
