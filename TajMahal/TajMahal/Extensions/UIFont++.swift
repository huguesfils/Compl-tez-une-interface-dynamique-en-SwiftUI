//
//  UIFont++.swift
//  TajMahal
//
//  Created by Hugues Fils Caparos on 23/09/2024.
//
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
