import SwiftUI

// MARK: - SpotifyLoginView

struct SpotifyLoginView: View {
    var body: some View {
        HStack(spacing: 8) {
            Spacer()

            VStack(spacing: 32) {
                Spacer(minLength: 16)

                TextBox(header: Strings.info) {
                    VStack(spacing: 8) {
                        Text(Strings.partyStartRequirements)
                            .foregroundColor(Color.black)
                            .padding()

                        NavigationLink(destination: Text("TODO about page")) {
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

                Button(action: {
                    // TODO: launch spotify auth through repo
                }, label: {
                    HStack(spacing: 8) {
                        Spacer(minLength: 16)

                        Image(uiImage: Images.icSpotify)
                            .resizable()
                            .frame(width: 24, height: 24, alignment: .leading)

                        Text("Login to Spotify")
                            .foregroundColor(Color.white)

                        Spacer(minLength: 16)
                    }
                    .frame(minHeight: 44)
                    .background(Color.black)
                    .rounded()
                })
                    .rounded()
                    .basicShadow()

                #if DEBUG
                    NavigationLink(destination: Text("party contorller")) {
                        Button(action: {}) {
                            Text("DEBUG MODE: go to party")
                        }
                    }
                #endif

                Spacer(minLength: 16)
            }

            Spacer()
        }
        .background(Colors.primary100)
    }
}

// MARK: - SpotifyLoginView_Previews

#if DEBUG
    struct SpotifyLoginView_Previews: PreviewProvider {
        static var previews: some View {
            SpotifyLoginView()
        }
    }
#endif
