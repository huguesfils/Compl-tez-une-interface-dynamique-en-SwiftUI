import SwiftUI

struct RestaurantHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .font(.jakarta(.light, size: 15))
                    .foregroundStyle(.textGray)
                Text("Taj Mahal")
                    .font(.jakarta(.bold, size: 18))
            }
            Spacer()
            Image("Logo")
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(.logoGray)
                .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    RestaurantHeaderView()
        .padding()
}
