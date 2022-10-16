import SpotifyiOS

// MARK: - SpotifyAuthenticationServiceProvider

protocol SpotifyAuthenticationServiceProvider {
    func setup(secretsService: SecretsServiceProvider)
}

// MARK: - SpotifyAuthenticationService

class SpotifyAuthenticationService: SpotifyAuthenticationServiceProvider {
    func setup(secretsService: SecretsServiceProvider) {
        let configuration = SPTConfiguration(
            clientID: secretsService.spotifyClientId,
            redirectURL: URL(string: secretsService.spotifyDeeplinkUrl)!
        )
    }
}
