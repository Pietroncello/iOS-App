//
//  HomePageView.swift
//  testEsame
//
//  Created by Marco Cello on 17/10/23.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ScrollView(showsIndicators:false) {
            Button(action: {}) {
                HStack{
                    Text("Cerca la ricetta in base al paese")
                        .padding(.horizontal)
                    Image(systemName: "globe.europe.africa.fill")
                        .font(.largeTitle)
                    
                }.padding()
            }
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(30)
            .padding(.horizontal)
            .font(.title)
            .fontWeight(.semibold)
            TitleView(title: "Ultimi cercati")
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ButtonRecipeView(name: "Pasta al ragù", difficulty: "Facile", time: "60 min", nation: "Italy")
                    ButtonRecipeView(name: "Pizza", difficulty: "Facile", time: "60 min", nation: "Italy")
                    
                }
            }
            TitleView(title: "Preferiti")
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ButtonRecipeView(name: "Pasta al ragù", difficulty: "Facile", time: "60 min", nation: "Italy")
                    ButtonRecipeView(name: "Pasta al ragù", difficulty: "Facile", time: "60 min", nation: "Italy")
                    
                }
            }
            TitleView(title: "Preferiti")
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ButtonRecipeView(name: "Pasta al ragù", difficulty: "Facile", time: "60 min", nation: "Italy")
                    ButtonRecipeView(name: "Pasta al ragù", difficulty: "Facile", time: "60 min", nation: "Italy")
                    
                }
            }
        }
        .background(backgroundColor)
    }
}

#Preview {
    HomePageView()
}
