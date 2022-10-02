import SwiftUI

// MARK: - SpotifyLoginView

struct SpotifyLoginView: View {
    var body: some View {
        HStack(spacing: 8) {
            Spacer()

            VStack(spacing: 32) {
                Spacer(minLength: 16)

                TextBox("blah blah blah blahblah blah blah blahblah blah blah blah account/legal stuff here")

                Button(action: {
                    // TODO: launch spotify auth through repo
                }, label: {
                    HStack(spacing: 8) {
                        Spacer(minLength: 16)

                        Image(uiImage: Images.icSpotify)
                            .resizable()
                            .frame(width: 16, height: 16, alignment: .leading)

                        Spacer()

                        Text("Login to Spotify")
                            .foregroundColor(Color.white)

                        Spacer(minLength: 16)
                    }
                    .background(Color.black)
                    .padding(Edge.Set.all, 8)
//                .frame(minHeight: 44) // TODO: not working...
//                .cornerRadius(8)
                })

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
