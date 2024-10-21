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
enum DishDetailsSection {
    
    case allergens
    case ingredients
    
    var title: String {
        switch self {
        case .allergens:
            return "Allergènes"
        case .ingredients:
            return "Ingrédients"
            
        }
    }
}
