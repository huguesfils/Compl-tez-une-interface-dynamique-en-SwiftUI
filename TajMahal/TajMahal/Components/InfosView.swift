import SwiftUI

struct InfosView: View {
    let image: RestaurantInfo.Icons
    let text: RestaurantInfo.InfoText
    let additionalText: RestaurantInfo.AdditionalInfo?
    
    var body: some View {
        HStack {
            Image(image.rawValue)
            Text(text.rawValue)
            Spacer()
            //if let
            Text(additionalText?.rawValue ?? "")
        }
        .font(.jakarta(.semiBold, size: 13))
        .foregroundStyle(.textGray)
        .padding(.bottom, 10)
    }
}

#Preview {
    InfosView(image: .hours, text: .openingDay, additionalText: .openingHours)
        .padding()
}

//TODO: 1 seule enum, left content, right content + image 
