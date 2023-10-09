//
//  ContentView.swift
//  testEsame
//
//  Created by Marco Cello on 05/10/23.
//

import SwiftUI


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
            
            ScrollView{
                TitleView(title: "Ultimi cercati:")
                HStack{
                    Button(action:{}){
                        HStack{
                            Image("Vetri neri")
                                .frame(width: 100, height: 100)
                            
                            VStack{
                                Text("Pizza")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.title2)
                                Text("Difficoltà: facile")
                                HStack{
                                    Image(systemName: "timer")
                                    Text(":20-30 min")
                                }
                                Text("Italy")
                                
                                
                            }
                        }
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    }
                    
                }
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
