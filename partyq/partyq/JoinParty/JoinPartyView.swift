import SwiftUI

// MARK: - JoinPartyView

struct JoinPartyView: View {
    // MARK: Internal

    let viewModel: JoinPartyViewModel

    var body: some View {
        if isSearching {
            searchScreen
        } else {
            formScreen
        }
    }

    // MARK: Private

    @State private var code: String = ""
    @State private var showToast = false
    @State private var isSearching = false

    @ViewBuilder private var formScreen: some View {
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
                        .onSubmit(codeSubmitHandler)

                    PartyqButton(Strings.submit)
                        .padding()
                        .onTapGesture(perform: codeSubmitHandler)
                }
            }.padding()

            Spacer()
        }
        .background(Colors.backgroundColor)
        .toast(message: Strings.toastError,
               isShowing: $showToast,
               duration: Toast.short)
    }

    @ViewBuilder private var searchScreen: some View {
        VStack {
            Spacer()

            PartyqButton("no")
                .padding(16)
        }
        .background(Colors.backgroundColor)
    }

    private func codeSubmitHandler() {
        let codeWasValid = viewModel.searchForParty(with: code)
        showToast = !codeWasValid
    }
}

// MARK: - JoinPartyView_Previews

struct JoinPartyView_Previews: PreviewProvider {
    static var previews: some View {
        JoinPartyView(viewModel: .init(ctx: globalContext))
    }
}
