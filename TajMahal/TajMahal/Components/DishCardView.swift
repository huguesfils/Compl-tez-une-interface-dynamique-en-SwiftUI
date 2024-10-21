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
                    
                    SpiceLevelView(level: dish.spiceLevel, hasPadding: false)
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .cornerRadius(10)
    }
}

#Preview {
    DishCardView(dish: Dish(name: "Aloo", description: "test", allergens: "test", ingredients: "test", spiceLevel: .light, imageName: "Aloo", price: "5,50"))
        .padding()
    
}
