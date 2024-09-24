//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Entrées")) {
                    ForEach(viewModel.apetizerArray) { dish in
                        NavigationLink(destination: DishDetailView(dish: dish)) {
                            DishCardView(dish: dish)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                Section(header: Text("Plats Principaux")) {
                    ForEach(viewModel.mainCourseArray) { dish in
                        NavigationLink(destination: DishDetailView(dish: dish)) {
                            DishCardView(dish: dish)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listRowSpacing(10)
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    MenuView()
}
