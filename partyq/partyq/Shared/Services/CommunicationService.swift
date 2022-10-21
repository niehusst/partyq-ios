import Foundation

// MARK: - CommunicationServiceProvider

protocol CommunicationServiceProvider {
    func connectToParty(with code: String)
}

// MARK: - CommunicationService

class CommunicationService: CommunicationServiceProvider {
    func connectToParty(with _: String) {
        // TODO:
    }
}
