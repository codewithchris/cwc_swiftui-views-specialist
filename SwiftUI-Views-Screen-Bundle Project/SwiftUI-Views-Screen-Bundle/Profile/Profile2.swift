//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Profile2: View {
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { gr in
                VStack {
                    Image("BannerPhoto")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: gr.size.width, height: gr.size.height * 0.35)
                        .overlay(ProfilePic().offset(y: gr.size.height * 0.17))
                    
                    Spacer()
                    
                    VStack() {
                        Header("Jaqueline")
                            .padding(.bottom)
                            .foregroundColor(.themeSecondary)

                        VStack(spacing: 10) {
                            Text("Entrepreneur")
                                .font(.title)
                                .foregroundColor(.themeSecondary)

                            HStack {
                                Spacer()
                                VStack {
                                    NavigationLink(destination: ListOfFruits()) {
                                        Text("521")
                                            .font(.system(size: 30, weight: .medium, design: .serif))
                                            .foregroundColor(.themeAccent)
                                    }
                                    Text("Following")
                                }
                                Spacer()
                                VStack {
                                    NavigationLink(destination: ListOfFruits()) {
                                        Text("1,708")
                                            .font(.system(size: 30, weight: .medium, design: .serif))
                                            .foregroundColor(.themeAccent)
                                    }
                                    Text("Likes")
                                }
                                Spacer()
                                VStack {
                                    NavigationLink(destination: ListOfFruits()) {
                                        Text("965")
                                            .font(.system(size: 30, weight: .medium, design: .serif))
                                            .foregroundColor(.themeAccent)
                                    }
                                    Text("Followers")
                                }
                                Spacer()
                            }
                            Divider()
                                .padding(10)
                            Text("Connections")
                                .fontWeight(.medium)

                            HStack {
                                Image("profile2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 60)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.themeTertiary, lineWidth: 2))
                                Spacer()
                                Image("profile3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 60)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.themeTertiary, lineWidth: 2))
                                Spacer()
                                Image("profile4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 60)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.themeTertiary, lineWidth: 2))
                                Spacer()
                                Button(action: { }) {
                                    Image(systemName: "ellipsis")
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Circle()
                                            .fill(Color.themeAccent)
                                            .deepShadow())
                                }
                            }

                            Button(action: { }) {
                                Text("Follow")
                                    .padding()
                                    .padding(.horizontal)
                                    .frame(width: 300)
                                    .background(Capsule()
                                        .fill(Color.themeAccent)
                                        .deepShadow())
                            }
                            .padding(.top)
                        }
                        .padding(20)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(RoundedRectangle(cornerRadius: 30).fill(Color.themeBackground).deepShadow())
                        .padding(40)
                    }
                    .background(
                        OverlapCurveRectangle(curvesOnBottom: false)
                            .fill(Color.themeSecondary)
                            .overlay(OverlapCurveRectangle(curvesOnBottom: false)
                                .stroke(Color.clear, lineWidth: 4)
                                .shadow(color: .black, radius: 6))
                            .clipShape(OverlapCurveRectangle(curvesOnBottom: false))
                    )
                        .padding(.top, 90)
                }
                .foregroundColor(.themeForeground)
            }
        }
        .navigationBarTitle("Profile2.swift", displayMode: .inline)
    }
}

struct Profile2_Previews: PreviewProvider {
    static var previews: some View {
        Profile2()
    }
}

struct ProfilePic: View {
    var body: some View {
        Image("profile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.themeForeground, lineWidth: 4))
            .deepShadow()
    }
}
