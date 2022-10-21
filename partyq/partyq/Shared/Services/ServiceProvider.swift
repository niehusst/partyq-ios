// MARK: - Provider

protocol Provider {
    var musicService: SpotifyMusicServiceProvider { get }
    var authService: SpotifyAuthenticationServiceProvider { get }
    var secrets: SecretsServiceProvider { get }
    // TODO: deeplink manager here too?
    var communicationService: CommunicationServiceProvider { get }
}

// MARK: - ServiceProvider

/// dependency injection container; swap out an implmentation of this class to inject dependencies for testing
class ServiceProvider: Provider {
    lazy var musicService: SpotifyMusicServiceProvider = SpotifyMusicService()

    lazy var authService: SpotifyAuthenticationServiceProvider = SpotifyAuthenticationService()

    lazy var secrets: SecretsServiceProvider = SecretsService()

    lazy var communicationService: CommunicationServiceProvider = CommunicationService()
}
