import Rswift
import SwiftUI

// MARK: - PartyConnectView

struct PartyConnectView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()

                HStack(spacing: 16) {
                    Spacer()

                    Image(uiImage: Images.partyq)
                        .resizable()
                        .scaledToFit()

                    Spacer()
                }

                Spacer()

                HStack(spacing: 16) {
                    Spacer()

                    VStack(spacing: 16) {
                        NavigationLink(destination: SpotifyLoginView(viewModel: .init(ctx: globalContext))) {
                            PartyqButton(Strings.startParty)
                        }

                        NavigationLink(destination: JoinPartyView(viewModel: .init(ctx: globalContext))) {
                            PartyqButton(Strings.joinParty)
                        }
                    }

                    Spacer()
                }

                Spacer()
            }
            .background(Colors.backgroundColor)
        }
    }
}

// MARK: - PartyConnectView_Previews

struct PartyConnectView_Previews: PreviewProvider {
    static var previews: some View {
        PartyConnectView()
    }
}
