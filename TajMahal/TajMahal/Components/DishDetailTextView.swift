import SwiftUI

struct DishDetailTextView: View {
    var section: DishDetailsSection
    var dish: Dish
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(section.title)
                .font(.jakarta(.semiBold, size: 12))
                .foregroundStyle(.textGray)
            
            switch section {
            case .allergens:
                Text(dish.allergens)
                    .font(.jakarta(.regular, size: 12))
                    .foregroundStyle(.textGray)
            case .ingredients:
                Text(dish.ingredients)
                    .font(.jakarta(.regular, size: 12))
                    .foregroundStyle(.textGray)
            }
        }
    }
}

#Preview {
    DishDetailTextView(section: .allergens, dish: .init(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "7,00"))
}
