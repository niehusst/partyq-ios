import SpotifyiOS

// MARK: - Provider

protocol Provider {
    var musicService: SpotifyMusicServiceProvider { get }
    var authService: SpotifyAuthenticationServiceProvider { get }
    var secrets: SecretsServiceProvider { get }
    // TODO: deeplink manager here too?
    var spotifyAppRemote: SPTAppRemote? { get }
}

// MARK: - ServiceProvider

/// dependency injection container; swap out an implmentation of this class to inject dependencies for testing
class ServiceProvider: Provider {
    lazy var musicService: SpotifyMusicServiceProvider = SpotifyMusicService()

    lazy var authService: SpotifyAuthenticationServiceProvider = SpotifyAuthenticationService()

    lazy var secrets: SecretsServiceProvider = SecretsService()

    var spotifyAppRemote: SPTAppRemote? {
        nil
        // TODO: get this info from other services? put this somewhere else?
//        let appRemote = SPTAppRemote(configuration: self.configuration, logLevel: .debug)
//        appRemote.connectionParameters.accessToken = self.accessToken
//        appRemote.delegate = self
//        return appRemote
    }
}
