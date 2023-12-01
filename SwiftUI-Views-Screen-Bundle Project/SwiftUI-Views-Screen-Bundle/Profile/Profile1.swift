//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Profile1: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: UnitPoint(x: 0.5, y: 0.5), endPoint: .bottom)
    let places = Data.getPlaces()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { gr in
                ZStack {
                    VStack {
                        Image("trail")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: gr.size.height * 0.25)
                            .clipped()
                            .overlay(self.gradient.opacity(0.4))
                        
                        Spacer()
                    }
                    //.edgesIgnoringSafeArea(.top) // Without NavView
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(spacing: 20) {
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 75)
                                .cornerRadius(5)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.themeForeground))
                            
                            VStack(alignment: .leading, spacing: 11) {
                                Header("Jaqueline")
                                Text("Salt Lake City, Utah").bold()
                                Text("Member Since: 2016")
                                    .font(.footnote)
                            }
                            
                            Spacer()
                            
                            Button(action: { }) {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Circle()
                                        .fill(Color.themeAccent)
                                        .deepShadow())
                            }
                            .offset(y: -6)
                        }
                        .frame(height: 100)
                        .padding(.top, 100)
                        
                        Text("Places Visited")
                            .font(.title)
                            .padding(.top)
                            .foregroundColor(.themeSecondary)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(self.places) { place in
                                    VStack(alignment: .leading) {
                                        Image(place.city)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: gr.size.width * 0.60, height: gr.size.height * 0.50)
                                            .clipShape(SelectiveRoundedCorners(cornerRadius: 40, corners:[.topLeft, .bottomRight]))
                                        Text(place.city)
                                            .font(.system(size: 22))
                                        Text(place.country)
                                    }
                                }
                            }
                        }
                        
                        Button(action: { }) {
                            Text("Notes")
                                .padding()
                                .padding(.horizontal)
                                .frame(width: 300)
                                .background(Capsule()
                                    .fill(Color.themeAccent)
                                    .deepShadow())
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .foregroundColor(.themeForeground)
            }
        }
        .navigationBarTitle("Profile1.swift", displayMode: .inline)
    }
}

struct Profile1_Previews: PreviewProvider {
    static var previews: some View {
        Profile1()
    }
}
