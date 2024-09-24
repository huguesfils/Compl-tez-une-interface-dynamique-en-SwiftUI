import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .foregroundStyle(.logoGray)
                    .padding()
                    
                RestaurantHeaderView()
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                
                VStack() {
                    InfosView(image: "horaire", text: "Mardi", additionalText: "11h30 - 14h30 \u{2022} 18h30 - 22h00")
                    
                    InfosView(image: "service", text: "Type de servcie", additionalText: "À emporter")
                    
                    InfosView(image: "localisation", text: "12  Avenue de la Brique - 75010 Paris", additionalText: "")
                    
                    InfosView(image: "site", text: "www.tajmahal.fr", additionalText: "")
                    
                    InfosView(image: "telephone", text: "06 12 34 56 78", additionalText: "")
                    
                }
                .padding(.horizontal)

                Spacer()
                
                NavigationLink {
                    MenuView()
                } label: {
                    Text("Accéder au menu")
                        .font(.jakarta(.bold, size: 16))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(.customRed)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

#Preview {
        WelcomeView()
}
