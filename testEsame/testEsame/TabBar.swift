//
//  TabBar.swift
//  testEsame
//
//  Created by Marco Cello on 16/10/23.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        
        Spacer()
        HStack{
            
            Spacer()
            Button(action: {}){
                Image(systemName: "house.circle")
                    .font(.largeTitle)
            }
            Spacer()
            Button(action: {}){
                Image(systemName: "plus.circle")
                    .font(.custom("String", size: 50))
            }
            Spacer()
            Button(action: {}){
                Image(systemName: "person.crop.circle")
                    .font(.largeTitle)
            }
            Spacer()
            
        }
        .frame(width: 400, height: 60)
        .cornerRadius(20)
        .padding(0)
        .background(Color.orange)
        .foregroundColor(.white)
    }        
}

#Preview {
    TabBar()
}
