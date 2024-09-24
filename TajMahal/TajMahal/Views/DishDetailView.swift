//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Hugues Fils Caparos on 24/09/2024.
//

import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
                Text(dish.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                
                Text("Description")
                    .font(.headline)
                    .padding(.bottom, 2)
                
                Text(dish.description)
                    .padding(.bottom, 10)
                
                Text("Ingrédients")
                    .font(.headline)
                    .padding(.bottom, 2)
                
                Text(dish.ingredients)
                    .padding(.bottom, 10)
                
                Text("Allergènes")
                    .font(.headline)
                    .padding(.bottom, 2)
                
                Text(dish.allergens)
                    .padding(.bottom, 10)
                
                Text("Niveau d'épice : \(dish.spiceLevel)")
                    .font(.headline)
                    .padding(.bottom, 2)
            }
            .padding()
        }
        .navigationTitle(dish.name)
    }
}

#Preview {
    DishDetailView(dish: Dish(name: "test", description: "test", allergens: "test", ingredients: "test", spiceLevel: .hot, imageName: "test"))
}
