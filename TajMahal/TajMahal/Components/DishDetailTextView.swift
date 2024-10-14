import SwiftUI

struct DishDetailTextView: View {
    var title: DishDetailsTitle
    var dish: Dish
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title.rawValue)
                .font(.jakarta(.semiBold, size: 12))
                .foregroundStyle(.textGray)
            
            if title == .allergens {
                Text(dish.allergens)
                    .font(.jakarta(.regular, size: 12))
                    .foregroundStyle(.textGray)
            } else {
                Text(dish.ingredients)
                    .font(.jakarta(.regular, size: 12))
                    .foregroundStyle(.textGray)
            }
        }
    }
}

#Preview {
    DishDetailTextView(title: .allergens, dish: .init(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "7,00"))
}
