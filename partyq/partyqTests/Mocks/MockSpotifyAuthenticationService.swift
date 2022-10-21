@testable import partyq

class MockSpotifyAuthenticationService: SpotifyAuthenticationServiceProvider {
    func setup(secretsService _: SecretsServiceProvider) {}
}
