import SwiftUI

struct InfosView: View {
    let info: RestaurantInfo
    
    var body: some View {
        HStack {
            Image(info.leftContent.iconName)
            Text(info.leftContent.text)
            
            Spacer()
            
            if let rightText = info.rightContent {
                Text(rightText)
            }
        }
        .font(.jakarta(.semiBold, size: 13))
        .foregroundStyle(.textGray)
        .padding(.bottom, 10)
    }
}

#Preview {
    InfosView(info: .hours)
            .padding()
}
