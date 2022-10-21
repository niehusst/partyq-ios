import Foundation

// MARK: - CommunicationServiceProvider

protocol CommunicationServiceProvider {
    func connectToParty(with code: String)
    func stopSearching()
}

// MARK: - CommunicationService

class CommunicationService: CommunicationServiceProvider {
    func connectToParty(with _: String) {
        // TODO:
    }

    func stopSearching() {}
}
