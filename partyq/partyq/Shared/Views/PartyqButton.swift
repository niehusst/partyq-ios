import SwiftUI

// MARK: - PartyqButton

struct PartyqButton: View {
    // MARK: Lifecycle

    init(_ title: String, _ image: UIImage? = nil) {
        self.title = title
        self.image = image
    }

    // MARK: Internal

    var title: String
    var image: UIImage?

    var body: some View {
        HStack(spacing: 8) {
            if let safeImage = image {
                Image(uiImage: safeImage)
            }

            Text(title)
                .font(.title3)
                .foregroundColor(Color.black)
        }
        .frame(minWidth: 44, maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 100)
                .fill(Colors.primary500)
                .basicShadow()
        )
    }
}

// MARK: - PartyqButton_Previews

#if DEBUG
    struct PartyqButton_Previews: PreviewProvider {
        static var previews: some View {
            PartyqButton("Some title")
        }
    }
#endif
