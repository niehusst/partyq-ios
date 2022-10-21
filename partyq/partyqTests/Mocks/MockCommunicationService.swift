@testable import partyq

class MockCommunicationService: CommunicationServiceProvider {
    var currentlySearching = false

    func connectToParty(with _: String) {
        currentlySearching = true
    }

    func stopSearching() {
        currentlySearching = false
    }
}
