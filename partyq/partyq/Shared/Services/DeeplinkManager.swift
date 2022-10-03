import Foundation

class DeeplinkManager {
    // MARK: Internal

    enum DeeplinkTarget: Equatable {
        case party /// Authenticated to create a party
        case errorScreen(errorMessage: String) /// An error occured!
    }

    func manage(url: URL) -> DeeplinkTarget {
        guard url.scheme == DeepLinkConstants.scheme,
              url.host == DeepLinkConstants.host,
              url.path == DeepLinkConstants.path
        else { return .errorScreen(errorMessage: "Invalid deeplink: \(url.absoluteString)") }

        return .party
    }

    // MARK: Private

    private enum DeepLinkConstants { // TODO: create on spotify dev dashboard
        static let scheme = "partyq"
        static let host = "com.niehusst.partyq"
        static let path = "/spotify-login"
    }
}
