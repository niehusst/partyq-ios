import Foundation

class JoinPartyViewModel: ObservableObject {
    // MARK: Lifecycle

    init(ctx: Provider) {
        self.ctx = ctx
    }

    // MARK: Internal

    @Published var isSearching = false

    /// Begins searching for party matching the input code, if valid
    /// - returns false if `code` isn't length 4, else returns true and searches for party
    func searchForParty(with code: String) -> Bool {
        if code.count != 4 {
            return false
        }
        ctx.communicationService.connectToParty(with: code)
        isSearching = true
        return true
    }

    func stopSearching() {
        // dont send double stop message to comms service
        if isSearching {
            ctx.communicationService.stopSearching()
            isSearching = false
        }
    }

    // MARK: Private

    private let ctx: Provider
}
