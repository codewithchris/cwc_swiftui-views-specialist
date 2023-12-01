//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ExploreWithCapsule: View {
    @State private var sortOption = 1
    let places = Data.getPlaces()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
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
                        HStack(spacing: 30) {
                            ForEach(self.places) { place in
                                VStack(spacing: 20) {
                                    Image(place.city)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: gr.size.width * 0.67, height: gr.size.width * 0.67)
                                        .clipShape(Circle())
                                        .padding(.top)
                                        .shadow(radius: 10, y: 5)
                                    Spacer()
                                    Header(place.city)
                                    Text(place.country)
                                        .padding(.bottom)
                                    HStack(spacing: 5) {
                                        ForEach(1...place.rating, id: \.self) { star in
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.themeTertiary)
                                        }
                                    }
                                    
                                    Spacer()
                                    
                                    Button(action: { }) {
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.white)
                                            .padding()
                                            .padding(.horizontal)
                                            .background(Circle()
                                                .fill(Color.themeAccent)
                                                .deepShadow())
                                    }
                                }
                                .padding(.bottom, 20)
                                .foregroundColor(.themeForeground)
                                .frame(width: gr.size.width * 0.75, height: gr.size.height)
                                .background(Capsule().fill(Color.themeSecondary))
                                
                                
                            }
                        }
                    }
                    .shadow(radius: 20, y: 10)
                    .padding(.horizontal)
                }
            }
            .navigationBarTitle("ExploreWithCapsule.swift", displayMode: .inline)
        }
    }
}

struct ExploreWithCapsule_Previews: PreviewProvider {
    static var previews: some View {
        ExploreWithCapsule()
    }
}
