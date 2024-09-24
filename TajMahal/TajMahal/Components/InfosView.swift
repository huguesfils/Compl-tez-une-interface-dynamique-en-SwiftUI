import SwiftUI

struct InfosView: View {
    let image: String
    let text: String
    let additionalText: String?
    
    var body: some View {
        HStack {
            Image(image)
            Text(text)
            Spacer()
            Text(additionalText ?? "")
        }
        .font(.jakarta(.semiBold, size: 13))
        .foregroundStyle(.textGray)
        .padding(.bottom, 10)
    }
}

#Preview {
    InfosView(image: "horaire", text: "mardi", additionalText: "11h30 - 14h30 \u{2022} 18h30 - 22h00")
        .padding()
}
