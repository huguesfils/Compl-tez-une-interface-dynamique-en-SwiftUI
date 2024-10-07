import Foundation

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
}

//MARK: - Restaurant
enum RestaurantInfo {
    enum Icons: String {
        case hours = "horaire"
        case service = "service"
        case location = "localisation"
        case website = "site"
        case phone = "telephone"
    }
    
    enum InfoText: String {
        case openingDay = "Mardi"
        case serviceType = "Type de service"
        case location = "12 Avenue de la Brique - 75010 Paris"
        case website = "www.tajmahal.fr"
        case phoneNumber = "06 12 34 56 78"
    }
    
    enum AdditionalInfo: String {
        case openingHours = "11h30 - 14h30 \u{2022} 18h30 - 22h00"
        case takeAway = "À emporter"
    }
}

