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
        HStack {
            if let safeImage = image {
                Image(uiImage: safeImage)
            }

            Text(title)
                .font(.title3)
                .foregroundColor(Color.black)
        }
        .frame(minWidth: 44, maxWidth: .infinity) // , minHeight: 44)
        .padding()
        .background(Colors.primary600)
        .cornerRadius(100)
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
