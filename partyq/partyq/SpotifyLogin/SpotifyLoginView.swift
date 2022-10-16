import SwiftUI

// MARK: - SpotifyLoginView

struct SpotifyLoginView: View {
    // MARK: Internal

    var body: some View {
        HStack(spacing: 8) {
            Spacer()

            VStack(spacing: 32) {
                Spacer(minLength: 16)

                infoBox

                spotifyAuthButton

                #if DEBUG
                    NavigationLink(destination: PartyHomeView()) {
                        // TODO: setup dummy spotify stuff since it wont exist w/o auth
                        Text("DEBUG MODE: go to party")
                    }
                #endif

                Spacer(minLength: 16)
            }

            Spacer()
        }
        .background(Colors.primary100)
    }

    // MARK: Private

    @ViewBuilder private var infoBox: some View {
        TextBox(header: Strings.info) {
            VStack(spacing: 8) {
                Text(Strings.partyStartRequirements)
                    .foregroundColor(Color.black)
                    .padding()

                NavigationLink(destination: AboutSheet()) {
                    HStack(spacing: 8) {
                        Text(Strings.whyIsThis)
                            .font(Font.footnote)
                            .bold()
                            .foregroundColor(Colors.primary500)

                        Image(uiImage: Images.info)
                            .renderingMode(.template)
                            .tint(Colors.primary500)
                    }
                }
            }
        }
    }

    @ViewBuilder private var spotifyAuthButton: some View {
        Button(action: {
            // TODO: launch spotify auth through repo
        }, label: {
            HStack(spacing: 8) {
                Spacer(minLength: 16)

                Image(uiImage: Images.icSpotify)
                    .resizable()
                    .frame(width: 24, height: 24, alignment: .leading)

                Text(Strings.authWithSpotify)
                    .foregroundColor(Color.white)

                Spacer(minLength: 16)
            }
            .frame(minHeight: 44)
            .background(Color.black)
            .rounded()
        })
            .rounded()
            .basicShadow()
    }
}

// MARK: - SpotifyLoginView_Previews

struct SpotifyLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyLoginView()
    }
}
