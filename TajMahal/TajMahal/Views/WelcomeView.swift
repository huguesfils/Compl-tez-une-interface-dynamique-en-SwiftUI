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
                    InfosView(info: .hours)
                    InfosView(info: .service)
                    InfosView(info: .website)
                    InfosView(info: .phone)
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
