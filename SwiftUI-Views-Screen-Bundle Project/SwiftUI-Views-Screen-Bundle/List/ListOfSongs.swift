//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ListOfSongs: View {
    let songs = Data.getSongs()
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                Color.themeBackground
                    .edgesIgnoringSafeArea(.all)
                
                Capsule()
                    .fill(Color.themeSecondary)
                    .overlay(
                        Capsule()
                            .strokeBorder(Color.clear, lineWidth: 4)
                            .shadow(color: .black, radius: 10, y: 10))
                    .clipShape(Capsule())
                    .padding()
                    .offset(y: gr.size.height * 0.43)  // Without NavView
//                    .offset(y: gr.size.height * 0.43) // With NavView
                
                VStack(alignment: .trailing) {
                    Image("cover")
                        .resizable()
                        .clipShape(CurvedBottomRectangle(curveOffset: 40))
                        .frame(width: gr.size.width, height: gr.size.height * 0.35) // Without NavView
//                        .frame(width: gr.size.width, height: gr.size.height * 0.3) // With NavView
                        .aspectRatio(contentMode: .fill)
                        .deepShadow()
                        .overlay(
                            Text("Cover Art: Marie Bergeron")
                                .font(.footnote)
                                .padding(.top)
                                .rotationEffect(.degrees(-90), anchor: .bottomTrailing)
                            , alignment: .topTrailing)
                    
                    Group {
                        Header("Wojciech Golczewski")
                            .padding(.top)
                        Text("Reality Check")
                    }
                    .frame(maxWidth: .infinity)
                    
                    Spacer()
                }
                .edgesIgnoringSafeArea(.top) //Without NavView
                
                VStack {
                    Spacer()
                    
                    ZStack(alignment: .bottomLeading) {
                        UpwardArc()
                            .stroke(Color.themeTertiary, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                            .frame(height: 200)
                        
                        Circle()
                            .fill(Color.themeAccent)
                            .deepShadow()
                            .frame(width: 20, height: 20)
                            .offset(x: -10, y: 5)
                        
                        HStack(alignment: .bottom) {
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "backward.end")
                                    .padding()
                                    .background(Circle().fill(Color.themeAccent).deepShadow())
                            }
                            Button(action: {}) {
                                Image(systemName: "play.fill")
                                    .font(.system(size: 50))
                                    .padding(30)
                                    .background(Circle().fill(Color.themeAccent).deepShadow())
                            }
                            Button(action: {}) {
                                Image(systemName: "forward.end")
                                    .padding()
                                    .background(Circle().fill(Color.themeAccent).deepShadow())
                            }
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 60)
                    .padding(.bottom, 30)
                    
                    List(self.songs) { song in
                        HStack {
                            Text(song.name)
                            Spacer()
                            Text(song.duration)
                        }
                    }
                    .font(.caption)
                    .foregroundColor(.themeSecondary)
                    .frame(height: gr.size.height * 0.2758)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.themeBackground).deepShadow())
                    .padding(.horizontal, 50)
                    
                    Text("").frame(height: 1) // Workaround to keep rows from continuing into the safe are
                }
            }
            .foregroundColor(.themeForeground)
        }
        .onAppear {
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableViewCell.appearance().backgroundColor = UIColor.clear
        }
        .navigationBarTitle("ListOfSongs.swift", displayMode: .inline)    }
}

struct ListOfSongs_Previews: PreviewProvider {
    static var previews: some View {
        ListOfSongs()
    }
}
