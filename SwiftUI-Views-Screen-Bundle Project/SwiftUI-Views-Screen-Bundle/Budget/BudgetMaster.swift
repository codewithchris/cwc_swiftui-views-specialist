//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BudgetMaster: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .fill(Color.themeSecondary)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .strokeBorder(Color.clear, lineWidth: 4)
                            .shadow(color: .black, radius: 4))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .padding(.horizontal, 10)
                Spacer(minLength: 150)
            }
            .offset(y: -20)
            .edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 20) {
                HStack {
                    Button(action: {
                        // Navigate Back
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Circle().fill(Color.themeAccent).deepShadow())
                    }
                    
                    Spacer()
                    
                    Text("BudgetMaster.swift")
                        .font(.custom(Theme.mainFontName, size: 24))
                    
                    Spacer()
                    
                    Button(action: { }) {
                        Image(systemName: "questionmark")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Circle().fill(Color.themeAccent).deepShadow())
                    }
                }
                .padding(.bottom, 40)
                
                Text("Monthly Budget")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.themeForeground)
                    .opacity(0.8)
                    .padding(.bottom, -20)
                
                Header("$1,000.00")
                    .padding(.bottom, 20)
                
                VStack(spacing: 10) {
                    HStack {
                        Image(systemName: "chart.pie")
                            .padding(.horizontal)
                        Text("Distribution")
                        Spacer()
                        Button(action: { }) {
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .padding()
                                .padding(.horizontal)
                                .background(Circle().fill(Color.themeAccent).deepShadow())
                        }
                    }
                    .padding()
                    Divider()
                    HStack {
                        Image(systemName: "bell")
                            .padding(.horizontal)
                        Text("Alerts")
                        Spacer()
                        Button(action: { }) {
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .padding()
                                .padding(.horizontal)
                                .background(Circle().fill(Color.themeAccent).deepShadow())
                        }
                    }
                    .padding()
                    Divider()
                    HStack {
                        Image(systemName: "flag.fill")
                            .foregroundColor(.themeTertiary)
                            .padding(.horizontal)
                        Text("Warnings")
                        Spacer()
                        Button(action: { }) {
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .padding()
                                .padding(.horizontal)
                                .background(Circle().fill(Color.themeAccent).deepShadow())
                        }
                    }
                    .padding()
                }
                .padding(.vertical)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.themeBackground).deepShadow())
                .padding(.horizontal)
                
                HStack {
                    Image(systemName: "square.and.arrow.up")
                        .padding(.horizontal)
                    Text("Share Progress")
                    Spacer()
                    Button(action: { }) {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Circle().fill(Color.themeAccent).deepShadow())
                    }
                }
                .padding()
                .padding([.top, .horizontal])
                
                HStack {
                    Image(systemName: "checkmark.circle")
                        .padding(.horizontal)
                    Text("Goals")
                    Spacer()
                    Button(action: { }) {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Circle().fill(Color.themeAccent).deepShadow())
                        
                    }
                }
                .padding()
                .padding(.horizontal)
                
                Button(action: {}) {
                    HStack {
                        Spacer()
                        Text("New")
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    .background(Capsule().fill(Color.themeAccent).deepShadow())
                    .padding(.horizontal)
                }
                
                Spacer()
            }
            .foregroundColor(Color.themeForeground)
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct BudgetMaster_Previews: PreviewProvider {
    static var previews: some View {
        BudgetMaster()
    }
}
