import SwiftUI

struct MenuView: View {
    @StateObject var viewModel = ViewModel()
    
    @ViewBuilder
    var body: some View {
        NavigationStack {
            if viewModel.apetizers.isEmpty && viewModel.mainCourses.isEmpty {
                Spacer()
                
                ProgressView("Chagement du menu...")
                
                Spacer()
            } else {
                List {
                    Section(header: Text("Entrées")) {
                        ForEach(viewModel.apetizers) { dish in
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                DishCardView(dish: dish)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    Section(header: Text("Plats Principaux")) {
                        ForEach(viewModel.mainCourses) { dish in
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                DishCardView(dish: dish)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                }
                .listRowSpacing(10)
                .navigationTitle("Menu")
            }
        }
    }
}

#Preview {
    MenuView()
}
