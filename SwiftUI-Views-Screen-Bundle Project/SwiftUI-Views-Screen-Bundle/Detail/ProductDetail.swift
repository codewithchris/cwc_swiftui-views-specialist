//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ProductDetail: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                Color.themeBackground
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    HStack {
                        Button(action: {
                            // Navigate Back
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "arrow.left")
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.themeAccent)
                                        .deepShadow())
                        }
                        Spacer()
                        Header("ProductDetail.swift")
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "cart")
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.themeAccent)
                                        .deepShadow())
                        }
                    }
                    .padding(.horizontal)
                    
                    Image("Coconut")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(60)
                        .layoutPriority(1)
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Coconuts")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Text("Organic")
                            Spacer()
                        }
                        Spacer()
                        Text("$1")
                            .font(.system(.largeTitle, design: .serif)) +
                            Text(".50")
                                .font(.system(.body, design: .serif))
                                .baselineOffset(12)
                    }
                    .foregroundColor(.themeSecondary)
                    .padding(.horizontal)
                    
                    HStack(spacing: 30) {
                        VStack(spacing: 0) {
                            Button(action: { }) {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(Circle()
                                        .fill(Color.themeAccent)
                                        .frame(height: 50)
                                        .deepShadow())
                            }
                            Spacer()
                            Text("2")
                                .font(.system(.largeTitle, design: .serif))
                                .fontWeight(.bold)
                            Text("quantity")
                            Spacer()
                            Button(action: { }) {
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(Circle()
                                        .fill(Color.themeAccent)
                                        .frame(height: 50)
                                        .deepShadow())
                            }
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Capsule().fill(Color.themeTertiary))
                        
                        VStack(spacing: 0) {
                            Image(systemName: "questionmark.diamond.fill")
                                .font(.largeTitle)
                                .padding()
                            Spacer()
                            Text("Have questions?")
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: { }) {
                                Image(systemName: "ellipses.bubble.fill")
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(Circle()
                                        .fill(Color.themeAccent)
                                        .frame(height: 50)
                                        .deepShadow())
                            }
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Capsule().fill(Color.themeTertiary))
                        
                        VStack(spacing: 0) {
                            Spacer()
                            Text("$3")
                                .font(.system(.largeTitle, design: .serif)) +
                                Text(".00")
                                    .font(.system(.body, design: .serif))
                                    .baselineOffset(12)
                            Spacer()
                            
                            Button(action: { }) {
                                Image(systemName: "cart.fill.badge.plus")
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(Circle()
                                        .fill(Color.themeAccent)
                                        .frame(height: 50)
                                        .deepShadow())
                            }
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Capsule().fill(Color.themeTertiary))
                    }
                    .foregroundColor(Color.black)
                    .padding(.top, 90)
                    .padding([.bottom, .horizontal], 30)
                    .frame(maxWidth: .infinity, minHeight: gr.size.height * 0.45)
                    .background(OverlapCurveRectangle(curvesOnBottom: false).fill(Color.themeSecondary))
                }
                .edgesIgnoringSafeArea(.bottom)
            }
            .foregroundColor(.themeForeground)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail()
    }
}
