import SwiftUI
import UIKit

@main
struct TajMahalApp: App {
    init() {
        let navigationBarAppearance = UINavigationBarAppearance()

        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: Font.Jakarta.bold.rawValue, size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .bold)
        ]

        navigationBarAppearance.largeTitleTextAttributes = attributes
        navigationBarAppearance.titleTextAttributes = attributes
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
     }
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}
