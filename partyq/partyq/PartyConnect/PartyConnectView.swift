import Rswift
import SwiftUI

// MARK: - PartyConnectView

struct PartyConnectView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("partyq") // replace with image

                Spacer()

                VStack(spacing: 16) {
                    NavigationLink(destination: SpotifyLoginView()) {
                        Text("Create Party") // replace w/ custom button
                    }

                    NavigationLink(destination: JoinPartyView()) {
                        Text("Join Party")
                    }
                }
            }
        }
    }
}

// MARK: - PartyConnectView_Previews

struct PartyConnectView_Previews: PreviewProvider {
    static var previews: some View {
        PartyConnectView()
    }
}
