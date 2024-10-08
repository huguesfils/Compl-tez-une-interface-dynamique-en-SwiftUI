import SwiftUI

struct MenuListRedactedView: View {
    var body: some View {
        List {
            Section(header: Text("Entrées").redacted(reason: .placeholder)) {
                ForEach(0..<5, id: \.self) { _ in
                    Text("Entrée")
                        .redacted(reason: .placeholder)
                }
            }
            Section(header: Text("Plats Principaux").redacted(reason: .placeholder)) {
                ForEach(0..<5, id: \.self) { _ in
                    Text("Plat Principal")
                        .redacted(reason: .placeholder)
                }
            }
        }
        .listRowSpacing(10)
    }
}

#Preview {
    MenuListRedactedView()
}
