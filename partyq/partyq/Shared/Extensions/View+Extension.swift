import SwiftUI

extension View {
    func rounded() -> some View {
        cornerRadius(100)
    }

    func basicShadow() -> some View {
        shadow(color: Color.black, radius: 4, x: 0, y: 5)
    }
}
