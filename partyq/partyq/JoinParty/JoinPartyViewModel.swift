import Foundation

class JoinPartyViewModel {
    // MARK: Lifecycle

    init(ctx: Provider) {
        self.ctx = ctx
    }

    // MARK: Internal

    /// Begins searching for party matching the input code, if valid
    /// - returns false if `code` isn't length 4, else returns true and searches for party
    func searchForParty(with code: String) -> Bool {
        if code.count != 4 {
            return false
        }
        ctx.communicationService.connectToParty(with: code)
        return true
    }

    // MARK: Private

    private let ctx: Provider
}
