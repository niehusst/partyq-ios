import SwiftUI

// MARK: - JoinPartyView

struct JoinPartyView: View {
    // MARK: Internal

    @StateObject var viewModel: JoinPartyViewModel

    var body: some View {
        if viewModel.isSearching {
            searchScreen
                .onDisappear {
                    // stop party search if back button is pressed
                    viewModel.stopSearching()
                }
        } else {
            formScreen
        }
    }

    // MARK: Private

    @State private var code: String = ""
    @State private var showToast = false

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
        .toast(message: Strings.toastCodeError,
               isShowing: $showToast,
               duration: Toast.short)
    }

    @ViewBuilder private var searchScreen: some View {
        VStack(spacing: 16) {
            Spacer()
            
            ProgressView()
                .frame(width: 64, height: 64)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Colors.gray800)
                        .opacity(0.75)
                )
            
            Text(Strings.searchingForParty)
                .font(Font.footnote)
                .foregroundColor(Colors.gray999)
            
            Spacer()

            PartyqButton(Strings.stopSearching)
                .padding(16)
                .onTapGesture {
                    viewModel.stopSearching()
                }
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
