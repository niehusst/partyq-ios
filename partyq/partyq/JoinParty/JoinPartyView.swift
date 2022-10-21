import SwiftUI

// MARK: - JoinPartyView

struct JoinPartyView: View {
    let viewModel: JoinPartyViewModel
    
    @State private var code: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextBox(header: Strings.joinParty) {
                VStack {
                    Text(Strings.partyCodeInfo)
                        .foregroundColor(Colors.gray999)
                        .font(Font.body)
                    
                    TextField(Strings.codePlaceholder, text: $code)
                        .font(Font.title2)
                        .background(Colors.gray300)
                        .keyboardType(.decimalPad)
                        .onSubmit {
                            viewModel.searchForParty(with: code)
                        }
                    
                    PartyqButton(Strings.submit)
                        .onTapGesture {
                            viewModel.searchForParty(with: code)
                        }
                }
            }
            
            Spacer()
        }
        .background(Colors.backgroundColor)
    }
}

// MARK: - JoinPartyView_Previews

struct JoinPartyView_Previews: PreviewProvider {
    static var previews: some View {
        JoinPartyView(viewModel: .init(ctx: globalContext))
    }
}
