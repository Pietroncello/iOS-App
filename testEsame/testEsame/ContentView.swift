//
//  ContentView.swift
//  testEsame
//
//  Created by Marco Cello on 05/10/23.
//

import SwiftUI

var backgroundColor = Color(#colorLiteral(red: 0.965, green: 0.965, blue: 0.965, alpha: 1))


struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .padding(15)
            Spacer()
        }
        
    }
}
struct ButtonRecipeView: View{
    var name: String
    var difficulty: String
    var time: String
    var nation: String
    
    var body: some View {
        Button(action:{}){
            HStack{
                //Image("Vetri neri")
                //.frame(width: 100, height: 100)
                Rectangle()
                    .frame(width: 150, height: 140)
                    .cornerRadius(20)
                    .padding(10)
                    .shadow(color: .blue,radius: 10)
                VStack{
                    Text(name)
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Difficoltà: \(difficulty)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Image(systemName: "timer")
                        Text(time)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Text(nation)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                }
                .padding(.trailing)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
            
            
            
        }
        .background(.white)
        .cornerRadius(20)
        .padding(10)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
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
            TitleView(title: "Ultimi cercati:")
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
    ContentView()
}
