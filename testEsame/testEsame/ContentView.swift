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
                                Text("Pizza")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Difficoltà: Facile")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    Image(systemName: "timer")
                                    Text(":20-30 min")
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Italy")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                            }
                            .padding(.trailing)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }
                        
                        
                        
                        
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(10)
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
                                Text("Pizza")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Difficoltà: Facile")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    Image(systemName: "timer")
                                    Text(":20-30 min")
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Italy")
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
            
            
            
        }
        .background(backgroundColor)
        
    }
}

#Preview {
    ContentView()
}
