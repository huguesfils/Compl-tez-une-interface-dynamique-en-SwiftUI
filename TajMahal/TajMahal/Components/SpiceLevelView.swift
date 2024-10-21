import SwiftUI

struct SpiceLevelView: View {
    var level: SpiceLevel
    var hasPadding: Bool
    
    var body: some View {
        
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
    
}

#Preview {
    SpiceLevelView(level: SpiceLevel.hot, hasPadding: false)
}
