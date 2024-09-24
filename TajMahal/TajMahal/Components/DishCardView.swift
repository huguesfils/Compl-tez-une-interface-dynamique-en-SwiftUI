//
//  DishCardView.swift
//  TajMahal
//
//  Created by Hugues Fils Caparos on 24/09/2024.
//

import SwiftUI

struct DishCardView: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(8)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(dish.name)
                    .font(.headline)
                Text(dish.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .cornerRadius(10)
    }
}

#Preview {
    DishCardView(dish: Dish(name: "Aloo", description: "test", allergens: "test", ingredients: "test", spiceLevel: .light, imageName: "Aloo"))
        
}
