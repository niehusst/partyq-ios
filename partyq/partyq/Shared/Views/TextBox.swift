import SwiftUI

// MARK: - TextBox

struct TextBox<BodyContent: View>: View {
    // MARK: Lifecycle

    init(header: String, body: @escaping () -> BodyContent) {
        headerText = header
        bodyContent = body
    }

    // MARK: Internal

    let headerText: String
    let bodyContent: () -> BodyContent

    var body: some View {
        let cornerRadius: CGFloat = 4

        VStack(spacing: 8) {
            Spacer().frame(height: 8)

            Text(headerText)
                .font(Font.title)
                .foregroundColor(Color.gray)

            Rectangle()
                .fill(Color.gray)
                .frame(height: 1)
                .padding(Edge.Set.horizontal)

            bodyContent()

            Spacer().frame(height: 8)
        }
        .cornerRadius(cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.black, lineWidth: 1)
        )
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color.white)
                .basicShadow()
        )
    }
}

// MARK: - TextBox_Previews

struct TextBox_Previews: PreviewProvider {
    static var previews: some View {
        TextBox(header: "Hello") { Text("body") }
    }
}
