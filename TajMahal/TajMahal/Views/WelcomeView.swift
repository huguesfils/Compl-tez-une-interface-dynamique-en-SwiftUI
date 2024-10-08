import SwiftUI

struct WelcomeView: View {

    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .padding()
                    
                RestaurantHeaderView()
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                
                VStack() {
                    InfosView(image: .hours,
                              text: .openingDay,
                              additionalText: .openingHours)
                    
                    InfosView(image: .service,
                              text: .serviceType,
                              additionalText: .takeAway)
                    
                    InfosView(image: .location,
                              text: .location,
                              additionalText: .none)
                    
                    InfosView(image: .website,
                              text: .website,
                              additionalText: .none)
                    
                    InfosView(image: .phone,
                              text: .phoneNumber,
                              additionalText: .none)
                    
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
