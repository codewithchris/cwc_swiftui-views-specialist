//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct RunningGoal: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [ .themeSecondary, .themeBackground]), startPoint: .top, endPoint: UnitPoint(x: 0.5, y: 0.7))
    
    var body: some View {
        ZStack {
            Color.themeSecondary
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                RoundedBottomRectangle(curveOffset: 300)
                    .fill(Color.themeBackground)
                    .frame(height: 500)
                    .overlay(
                        RoundedBottomRectangle(curveOffset: 100)
                            .stroke(Color.clear, lineWidth: 2)
                            .shadow(color: .black, radius: 5, x: 0, y: 0))
                    .clipShape(RoundedBottomRectangle(curveOffset: 100))
                
                Spacer()
            }
//            .edgesIgnoringSafeArea(.top) // Uncomment if not within a NavView
            
            VStack(spacing: 50) {
                Header("Running")
                    .padding(.bottom)
                Circle()
                    .trim(from: 0, to: 0.74)
                    .stroke(Color.themeTertiary, style: StrokeStyle(lineWidth: 30, lineCap: CGLineCap.round))
                    .rotationEffect(.degrees(-90))
                    .frame(height: 220)
                    .shadow(radius: 20, x: 0, y: 0)
                    .overlay(Text("1.5 mi").font(.custom("Avenir Next Condensed", size: 40)).fontWeight(.light))
                    .foregroundColor(.themeSecondary)
                
                Text("Goal: ") + Text("2 miles").bold()
                
                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                        Text("142")
                            .font(.title)
                            .bold()
                        Text("pulse")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "timer")
                            .font(.largeTitle)
                        Text("15")
                            .font(.title)
                            .bold()
                        Text("minutes")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "flame.fill")
                            .font(.largeTitle)
                        Text("269")
                            .font(.title)
                            .bold()
                        Text("calories")
                            .font(.footnote)
                    }
                    Spacer()
                }
                .foregroundColor(Color.themeBackground)
                
                
                HStack {
                    Spacer()
                    Button(action: { }) {
                        Text("Pause")
                            .foregroundColor(Color.themeAccent)
                            .padding()
                            .padding(.horizontal)
                            .frame(width: 150)
                            .background(Capsule().stroke(Color.themeAccent, lineWidth: 2))
                    }
                    Spacer()
                    Button(action: { }) {
                        Text("Stop")
                            .padding()
                            .padding(.horizontal)
                            .frame(width: 150)
                            .background(Capsule().fill(Color.themeAccent).deepShadow())
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, 70)
        }
        .foregroundColor(Color.themeForeground)
        .navigationBarTitle("RunningGoal.swift", displayMode: .inline)
    }
}

struct RunningGoal_Previews: PreviewProvider {
    static var previews: some View {
        RunningGoal()
    }
}
