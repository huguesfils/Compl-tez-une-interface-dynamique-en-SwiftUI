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
                    spiceLevelView(for: dish.spiceLevel, hasPadding: true)
                        .padding(.trailing, 30)
                        .padding(.top, 30)
                }
                
                DishDetailTextView(title: .allergens, dish: dish)
                .padding()
                
                Divider()
                    .padding(.horizontal)
                
                DishDetailTextView(title: .ingredients, dish: dish)
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
}

#Preview {
    DishDetailView(dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "7,00"))
}
