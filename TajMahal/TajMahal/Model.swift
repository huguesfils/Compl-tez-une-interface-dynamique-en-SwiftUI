import Foundation
import SwiftUI

//MARK: - Dish
enum SpiceLevel {
    case light
    case medium
    case hot
}

struct Dish: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: String
}

//MARK: - Restaurant
enum RestaurantInfo {
    case hours
    case service
    case location
    case website
    case phone
    
    var leftContent: (iconName: String, text: String) {
        switch self {
        case .hours:
            return ("horaire", "Mardi")
        case .service:
            return ("service", "Type de service")
        case .location:
            return ("localisation", "12 Avenue de la Brique - 75010 Paris")
        case .website:
            return ("site", "www.tajmahal.fr")
        case .phone:
            return ("telephone", "06 12 34 56 78")
        }
    }
    
    var rightContent: String? {
        switch self {
        case .hours:
            return "11h30 - 14h30 • 18h30 - 22h00"
        case .service:
            return "À emporter"
        default:
            return nil
        }
    }
}

//MARK: - DishDetails
enum DishDetailsTitle: String {
    case allergens = "Allergènes:"
    case ingredients = "Ingrédients:"
}

//MARK: - SpiceLevelFunc
func spiceLevelView(for level: SpiceLevel, hasPadding: Bool) -> some View {
    let maxSpiceLevel = 3
    let currentSpiceLevel: Int
    
    switch level {
    case .light:
        currentSpiceLevel = 1
    case .medium:
        currentSpiceLevel = 2
    case .hot:
        currentSpiceLevel = maxSpiceLevel
    }
    
    return HStack(spacing: 5) {
        ForEach(0..<maxSpiceLevel, id: \.self) { index in
            Image("Piment")
                .foregroundStyle(index < currentSpiceLevel ? .customRed : .customLightGray)
        }
    }
    .padding(.vertical, hasPadding ? 6 : 0)
    .padding(.horizontal, hasPadding ? 10 : 0)
    .background(hasPadding ? Color.white : Color.clear)
    .cornerRadius(hasPadding ? 25 : 0)
}

