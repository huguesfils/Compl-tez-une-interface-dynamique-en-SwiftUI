import SwiftUI

struct MenuView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            if viewModel.apetizers.isEmpty && viewModel.mainCourses.isEmpty {
                MenuListRedactedView()
            } else {
                MenuListView(apetizers: viewModel.apetizers, mainCourses: viewModel.mainCourses)
            }
        }
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
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

#Preview {
    MenuView()
}
