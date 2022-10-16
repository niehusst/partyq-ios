// MARK: - SecretsServiceProvider

protocol SecretsServiceProvider {
    var spotifyClientId: String { get }
    var spotifyDeeplinkUrl: String { get }
}

// MARK: - SecretsService

class SecretsService: SecretsServiceProvider {
    let spotifyClientId = "TODO_id" // TODO: how to store/fetch these safely w/in the app?
    let spotifyDeeplinkUrl = "partyq://TODO-url"
}
