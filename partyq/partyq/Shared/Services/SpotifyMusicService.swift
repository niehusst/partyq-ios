import SpotifyiOS

// MARK: - SpotifyMusicServiceProvider

protocol SpotifyMusicServiceProvider {
    func setup(config: SPTConfiguration)
    func connect()
    func disconnect()
}

// MARK: - SpotifyMusicService

// calls to spotify sdk are expected to be done from the main thread
class SpotifyMusicService: SpotifyMusicServiceProvider {
    var appRemote: SPTAppRemote?

    func setup(config: SPTConfiguration) {
        appRemote = SPTAppRemote(configuration: config, logLevel: .debug) // TODO: dont want debug in prod
//        appRemote.connectionParameters.accessToken = self.accessToken
//        appRemote.delegate = self
    }

    func connect() {}

    func disconnect() {}
}
