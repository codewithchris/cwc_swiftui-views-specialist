//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ExploreWithScroll: View {
    @State private var exploreSearchTerm = ""
    @State private var sortOption = 1
    
    let places = Data.getPlaces()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                VStack(spacing: 50) {
                    HStack {
                        Header("Explore")
                        Spacer()
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 44)
                            .cornerRadius(8)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke())
                    }

                    HStack {
                        TextField("Where do you want to explore?", text: $exploreSearchTerm)
                        Image(systemName: "location.fill")
                            .foregroundColor(.themeAccent)
                            .font(.headline)
                    }
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.themeBackground))
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 50)
                .foregroundColor(Color.themeForeground)
                .background(SelectiveRoundedCorners(cornerRadius: 40, corners: .bottomLeft)
                .fill(Color.themeSecondary))
                
                VStack(spacing: 20) {
                    HStack {
                        Button(action: { self.sortOption = 1 }) {
                            Text("Highest Rated")
                                .font(sortOption == 1 ? .title : .body)
                                .fontWeight(sortOption == 1 ? .bold : .regular)
                        }
                        Spacer()
                        Button(action: { self.sortOption = 2 }) {
                            Text("Popular")
                                .font(sortOption == 2 ? .title : .body)
                                .fontWeight(sortOption == 2 ? .bold : .regular)
                        }
                        Spacer()
                        Button(action: { self.sortOption = 3 }) {
                            Text("Closest")
                                .font(sortOption == 3 ? .title : .body)
                                .fontWeight(sortOption == 3 ? .bold : .regular)
                        }
                    }
                    .accentColor(.themeAccent)
                    .padding(.horizontal, 30)
                    .padding(.vertical)
                    GeometryReader { gr in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(self.places) { place in
                                    Image(place.city)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: gr.size.width * 0.75, height: gr.size.height)
                                        .clipShape(SelectiveRoundedCorners(cornerRadius: 40, corners:[.topLeft, .topRight, .bottomLeft]))
                                        .overlay(
                                            SelectiveRoundedCorners(cornerRadius: 20, corners:[.topLeft, .topRight, .bottomLeft])
                                                .fill(Color.black)
                                                .opacity(0.6)
                                                .frame(width: gr.size.width * 0.75 / 2, height: 100)
                                                .overlay(
                                                    VStack(alignment: .leading, spacing: 0) {
                                                        Text(place.city)
                                                            .font(.callout)
                                                        Text(place.country)
                                                            .bold()
                                                        Divider()
                                                            .padding(10)
                                                        HStack(spacing: 5) {
                                                            ForEach(1...place.rating, id: \.self) { star in
                                                                Image(systemName: "star.fill")
                                                                    .foregroundColor(.themeTertiary)
                                                            }
                                                        }
                                                    }
                                                    .padding()
                                                    .foregroundColor(Color.themeForeground))
                                            , alignment: .bottomTrailing)
                                }
                            }
                        }
                        .shadow(radius: 20)
                        .padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle("ExploreWithScroll.swift", displayMode: .inline)
//            .edgesIgnoringSafeArea(.top) // Uncomment if not used within a NavView
        }
    }
}

struct ExploreWithScroll_Previews: PreviewProvider {
    static var previews: some View {
        ExploreWithScroll()
//            .preferredColorScheme(.dark)
    }
}
