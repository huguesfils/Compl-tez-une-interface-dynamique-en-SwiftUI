import SwiftUI

struct DishCardView: View {
    let dish: Dish
    
    @ViewBuilder
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 86, alignment: .center)
                .cornerRadius(8)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading, spacing: 15) {
                Text(dish.name)
                    .font(.jakarta(.semiBold, size: 14))
                    .foregroundStyle(.textGray)
                Text(dish.description)
                    .font(.jakarta(.regular, size: 12))
                    .foregroundStyle(.textGray)
                
                HStack {
                    Text(dish.price + "€")
                        .font(.jakarta(.semiBold, size: 12))
                        .foregroundStyle(.textGray)
                    
                    Spacer()
                    
                    spiceLevelView(for: dish.spiceLevel)
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .cornerRadius(10)
    }
    
    private func spiceLevelView(for level: SpiceLevel) -> some View {
        let maxSpiceLevel = 3
        let currentSpiceLevel: Int
        
        switch level {
        case .light:
            currentSpiceLevel = 1
        case .medium:
            currentSpiceLevel = 2
        case .hot:
            currentSpiceLevel = maxSpiceLevel
        }
        
        return HStack(spacing: 5) {
            ForEach(0..<maxSpiceLevel, id: \.self) { index in
                Image("Piment")
                    .foregroundStyle(index < currentSpiceLevel ? .customRed : .customLightGray)
            }
        }
    }
}

#Preview {
    DishCardView(dish: Dish(name: "Aloo", description: "test", allergens: "test", ingredients: "test", spiceLevel: .light, imageName: "Aloo", price: "5,50"))
    
}
