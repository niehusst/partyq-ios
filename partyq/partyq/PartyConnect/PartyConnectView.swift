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

                    Image(uiImage: R.image.partyq()!)
                        .resizable()
                        .scaledToFit()

                    Spacer()
                }

                Spacer()

                VStack(spacing: 16) {
                    HStack(spacing: 16) {
                        Spacer()
                        
                        NavigationLink(destination: SpotifyLoginView()) {
                            PartyqButton("Join Party")
                        }
                        
                        Spacer()
                    }

                    HStack(spacing: 16) {
                        Spacer()
                        
                        NavigationLink(destination: SpotifyLoginView()) {
                            PartyqButton("Create Party")
                        }
                        
                        Spacer()
                    }
                }

                Spacer()
            }
            .background(Color(R.color.primary100()!))
        }
    }
}

// MARK: - PartyConnectView_Previews

struct PartyConnectView_Previews: PreviewProvider {
    static var previews: some View {
        PartyConnectView()
    }
}
