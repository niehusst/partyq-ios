@testable import partyq

class MockSecretService: SecretsServiceProvider {
    var spotifyClientId: String = "mock_client_id"

    var spotifyDeeplinkUrl: String = "partyq://mock_deeplink"
}
