@testable import partyq
import SpotifyiOS

class MockSpotifyMusicService: SpotifyMusicServiceProvider {
    func setup(config _: SPTConfiguration) {}

    func connect() {}

    func disconnect() {}
}
