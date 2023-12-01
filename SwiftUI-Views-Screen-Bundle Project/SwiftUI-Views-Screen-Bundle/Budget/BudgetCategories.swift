//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct BudgetCategories: View {
    @Environment(\.presentationMode) var presentationMode
    let budgetCategories = Data.getCategories()
    
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
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
                    Text("BudgetCategories.swift")
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
                .padding(.bottom, 10)
                
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .fill(Color.themeSecondary)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .strokeBorder(Color.clear, lineWidth: 4)
                            .shadow(color: .black, radius: 4, x: 0, y: 0))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .padding(.horizontal, 10)
            }
            
            List(budgetCategories) { category in
                HStack {
                    VStack(alignment: .leading) {
                        Text(category.category)
                            .font(.custom(Theme.mainFontName, size: 32))
                            .fontWeight(.thin)
                        Text(category.detail)
                            .font(.caption)
                    }
                    Spacer()
                    Button(action: { }) {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().fill(Color.themeAccent).deepShadow())
                    }
                }
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.themeBackground).deepShadow())
                .padding(.top)
            }
            .foregroundColor(.themeSecondary)
            .cornerRadius(20)
            .padding(.top, 80)
            .padding(.horizontal, 25)
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableView.appearance().separatorStyle = .none
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct BudgetDetail_Previews: PreviewProvider {
    static var previews: some View {
        BudgetCategories()
    }
}
