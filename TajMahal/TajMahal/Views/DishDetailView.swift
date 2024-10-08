import SwiftUI

struct DishDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let dish: Dish
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack(alignment: .topTrailing) {
                    Image(dish.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 467)
                        .clipped()
                        .cornerRadius(10)
                        .padding()
                    spiceLevelView(for: dish.spiceLevel)
                        .padding(.trailing, 30)
                        .padding(.top, 30)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Allergènes:")
                        .font(.jakarta(.semiBold, size: 12))
                        .foregroundStyle(.textGray)
                    
                    Text(dish.allergens)
                        .font(.jakarta(.regular, size: 12))
                        .foregroundStyle(.textGray)
                }
                .padding()
                
                Divider()
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Ingrédients:")
                        .font(.jakarta(.semiBold, size: 12))
                        .foregroundStyle(.textGray)
                    
                    Text(dish.ingredients)
                        .font(.jakarta(.regular, size: 12))
                        .foregroundStyle(.textGray)
                }
                .padding()
            }
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text(dish.name)
                        .font(.jakarta(.bold, size: 16))
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image("backButton")
                    .foregroundColor(.black)
                    .imageScale(.large)
            })
        }
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
        
        return HStack(spacing: 6) {
            ForEach(0..<maxSpiceLevel, id: \.self) { index in
                Image("Piment")
                    .foregroundStyle(index < currentSpiceLevel ? .customRed : .customLightGray)
            }
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(25)
    }
}

#Preview {
    DishDetailView(dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "7,00"))
}
