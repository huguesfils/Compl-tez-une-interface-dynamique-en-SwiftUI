import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
            
            HStack() {
                VStack(){
                    Text("Restaurant Indien")
                    Text("Taj Mahal")
                }
                Image("Logo")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.red)
                    .frame(width: 100, height: 100)
            }
            .background(.green)
            
            Spacer()
            
            
            
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .font(.jakarta(.bold, size: 16))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .background(.customRed)
                    .cornerRadius(8)
            }
            .padding()
        }
        
    }
}

#Preview {
    WelcomeView()
}
