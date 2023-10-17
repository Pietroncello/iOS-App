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
            Text("\(title):")
                .font(.largeTitle)
                .padding([.leading],15)
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
                    .shadow(color: .blue,radius: 5)
                VStack(alignment: .leading){
                    Text(name)
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(2, reservesSpace: true)
                        .fixedSize(horizontal: false, vertical: true)
                    
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
                .frame(maxWidth: 150)
                
            }
            
            
            
            
        }
        .background(.white)
        .cornerRadius(20)
        .padding(10)
    }
}

struct ContentView: View {
    var body: some View {
        ZStack() {
            TabView {
                HomePageView()
                    .tabItem {
                        Image(systemName: "house.fill")
                            .font(.custom("String", size: 50))
                    }
                
                AddRecipeView()
                    .tabItem {
                        Image(systemName: "plus.circle")
                            .font(.custom("String", size: 50))
                        
                    }
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                            .font(.custom("String", size: 50))
                    }
            }
            
            
        }
        
    }
    
}
#Preview {
    ContentView()
}
