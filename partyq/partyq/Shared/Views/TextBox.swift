import SwiftUI

// MARK: - TextBox

struct TextBox: View {
    // MARK: Lifecycle

    init(_ text: String) {
        self.text = text
    }

    // MARK: Internal

    let text: String

    var body: some View {
        let cornerRadius: CGFloat = 4

        Text(text)
            .foregroundColor(Color.black)
            .padding(Edge.Set.all, 8)
            .background(Color.white)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}

// MARK: - TextBox_Previews

struct TextBox_Previews: PreviewProvider {
    static var previews: some View {
        TextBox("Hello")
    }
}
