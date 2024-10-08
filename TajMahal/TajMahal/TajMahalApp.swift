import SwiftUI
import UIKit

@main
struct TajMahalApp: App {
    init() {
        let appear = UINavigationBarAppearance()

        let atters: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "PlusJakartaSans-bold", size: 16)!
        ]

        appear.largeTitleTextAttributes = atters
        appear.titleTextAttributes = atters
        UINavigationBar.appearance().standardAppearance = appear
     }
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}
