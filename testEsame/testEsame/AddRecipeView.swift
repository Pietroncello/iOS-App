//
//  AddRecipeView.swift
//  testEsame
//
//  Created by Marco Cello on 17/10/23.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var recipeName = ""
    @State private var duration = ""
    @State private var ingredients = []
    @State private var isEditing = false
    @State private var rating = 4
    
    var body: some View {
        NavigationStack {
            Form {
                Section{
                    TextField("Titolo", text: $recipeName)
                    
                }
                Section{
                    TextField("Ingredienti", text: $recipeName)
                    
                }
                Section{
                    
                    if recipeName.isEmpty && !isEditing {
                        Text("Preparazione")
                            .foregroundColor(.gray)
                            .onTapGesture {
                                isEditing = true
                            }
                    }
                    else {
                        TextEditor(text: $recipeName)
                            .frame(width: .infinity, height: 100)
                    }
                    
                }
                Section{
                    RatingStarView(rating: $rating)
                    
                    
                }
                Section{
                    TextField("Paese", text: $recipeName)
                    
                    
                }
                Section{
                    
                    
                }
                .navigationTitle("Aggiungi ricetta:")
            }
            
        }
    }
}
    
    #Preview {
        AddRecipeView()
    }
    

