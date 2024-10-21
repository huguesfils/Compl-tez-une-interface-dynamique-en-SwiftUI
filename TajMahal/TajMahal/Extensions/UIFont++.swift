import SwiftUI

extension Font {
    enum Jakarta: String {
        case regular = "PlusJakartaSans-Regular"
        case bold = "PlusJakartaSans-Bold"
        case medium = "PlusJakartaSans-Medium"
        case light = "PlusJakartaSans-Light"
        case semiBold = "PlusJakartaSans-SemiBold"
    }

    static func jakarta(_ jakarta: Jakarta, size: CGFloat) -> Font {
        return .custom(jakarta.rawValue, size: size)
    }
}
