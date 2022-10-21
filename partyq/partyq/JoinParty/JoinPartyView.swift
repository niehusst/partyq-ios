import SwiftUI

// MARK: - JoinPartyView

struct JoinPartyView: View {
    // MARK: Internal

    let viewModel: JoinPartyViewModel

    var body: some View {
        VStack {
            Spacer()

            TextBox(header: Strings.joinParty) {
                VStack {
                    Text(Strings.partyCodeInfo)
                        .foregroundColor(Colors.gray999)
                        .font(Font.body)

                    TextField(Strings.codePlaceholder, text: $code)
                        .font(Font.title)
                        .foregroundColor(Colors.gray999)
                        .keyboardType(.decimalPad)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Colors.gray300, lineWidth: 1)
                        )
                        .padding()
                        .onSubmit {
                            viewModel.searchForParty(with: code)
                        }

                    PartyqButton(Strings.submit)
                        .padding()
                        .onTapGesture {
                            viewModel.searchForParty(with: code)
                        }
                }
            }.padding()

            Spacer()
        }
        .background(Colors.backgroundColor)
    }

    // MARK: Private

    @State private var code: String = ""
}

// MARK: - JoinPartyView_Previews

struct JoinPartyView_Previews: PreviewProvider {
    static var previews: some View {
        JoinPartyView(viewModel: .init(ctx: globalContext))
    }
}
