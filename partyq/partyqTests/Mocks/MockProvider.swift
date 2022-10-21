@testable import partyq

class MockProvider: Provider {
    lazy var musicService: SpotifyMusicServiceProvider = {
        MockSpotifyMusicService()
    }()

    lazy var authService: SpotifyAuthenticationServiceProvider = {
        MockSpotifyAuthenticationService()
    }()

    lazy var secrets: SecretsServiceProvider = {
        MockSecretService()
    }()

    lazy var communicationService: CommunicationServiceProvider = {
        MockCommunicationService()
    }()
}
