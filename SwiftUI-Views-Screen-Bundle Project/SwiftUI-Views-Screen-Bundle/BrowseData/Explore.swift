//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Explore: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [.black, .themeTertiary]), startPoint: .bottomLeading, endPoint: .topTrailing)
    let opacity = 0.7
    
    var body: some View {
        TabView {
            GeometryReader { gr in
                ZStack {
                    Color.themeBackground
                        .edgesIgnoringSafeArea(.top)
                    
                    VStack(spacing: 20) {
                        Header("Explore")
                        
                        Image("europe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay(Rectangle().fill(self.gradient).opacity(self.opacity))
                            .cornerRadius(20)
                            .shadow(radius: 8)
                            .overlay(InfoOverlay(imageName: "compass", title: "Germany", subtitle: "26 Cities"))
                        
                        HStack(spacing: 20) {
                            VStack(spacing: 20) {
                                Image("table")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: gr.size.width * 0.45, minHeight: gr.size.height * 0.27)
                                    .overlay(Rectangle().fill(self.gradient).opacity(self.opacity))
                                    .cornerRadius(20)
                                    .shadow(radius: 8)
                                    .overlay(InfoOverlay(imageName: "restaurant", title: "Fine Dining", subtitle: "420 Restaurants"))
                                
                                Image("castle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: gr.size.width * 0.45)
                                    .overlay(Rectangle().fill(self.gradient).opacity(self.opacity))
                                    .cornerRadius(20)
                                    .shadow(radius: 8)
                                    .overlay(InfoOverlay(imageName: "book", title: "Guides", subtitle: "56 Travel Guides"))
                            }
                            
                            VStack(spacing: 20) {
                                Image("train.stop")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: gr.size.width * 0.45)
                                    .overlay(Rectangle().fill(self.gradient).opacity(self.opacity))
                                    .cornerRadius(20)
                                    .shadow(radius: 8)
                                    .overlay(InfoOverlay(imageName: "train", title: "Trains", subtitle: "49 Train Stops"))
                                
                                Image("trail")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: gr.size.width * 0.45, minHeight: gr.size.height * 0.27)
                                    .overlay(Rectangle().fill(self.gradient).opacity(self.opacity))
                                    .cornerRadius(20)
                                    .shadow(radius: 8)
                                    .overlay(InfoOverlay(imageName: "mountains", title: "National Parks", subtitle: "98 Hiking Trails"))
                                
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .foregroundColor(Color.themeForeground)
            }
            .tabItem {
                Image(systemName: "paperplane.fill")
                Text("Categories")
            }
            
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Favorites")
            }
            
            Text("Favorites View")
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("Favorites")
            }
        }
        .navigationBarTitle("Explore.swift", displayMode: .inline)
        .accentColor(Color.themeAccent)
        .onAppear {
            UITabBar.appearance().isTranslucent = false
            UITabBar.appearance().barTintColor = UIColor(named: "Secondary")
            
        }
    }
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}

struct InfoOverlay: View {
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
            Spacer()
            Text(title)
                .font(.title)
            Text(subtitle)
                .font(.footnote)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}
