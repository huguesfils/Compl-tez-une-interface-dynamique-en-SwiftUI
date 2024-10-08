import SwiftUI

struct MenuListView: View {
    var apetizers: [Dish]
    var mainCourses: [Dish]
    
    var body: some View {
        List {
            Section(header: Text("Entrées")) {
                ForEach(apetizers) { dish in
                    ZStack {
                        NavigationLink(destination: DishDetailView(dish: dish)) {
                            EmptyView()
                        }
                        .opacity(0.0)
                        .buttonStyle(PlainButtonStyle())
                        DishCardView(dish: dish)
                    }
                }
                .listRowSeparator(.hidden)
            }
            Section(header: Text("Plats Principaux")) {
                ForEach(mainCourses) { dish in
                    ZStack {
                        NavigationLink(destination: DishDetailView(dish: dish)) {
                            EmptyView()
                        }
                        .opacity(0.0)
                        .buttonStyle(PlainButtonStyle())
                        DishCardView(dish: dish)
                    }
                }
                .listRowSeparator(.hidden)
            }
        }
        .listRowSpacing(10)
    }
}


#Preview {
    MenuListView(apetizers: [Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5,50")], mainCourses: [Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "7,00")])
}
