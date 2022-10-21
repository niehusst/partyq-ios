import Foundation
import Nimble
@testable import partyq
import Quick

class JoinPartyViewModelTests: QuickSpec {
    var ctx = MockProvider()
    lazy var joinVM = JoinPartyViewModel(ctx: ctx)

    override func spec() {
        describe("JoinPartyViewModel validates input codes") {
            beforeEach {
                self.ctx = MockProvider()
                self.joinVM = JoinPartyViewModel(ctx: self.ctx)
            }

            context("with code < 4 digits") {
                it("does not start searching for parties") {
                    expect((self.ctx.communicationService as! MockCommunicationService).currentlySearching).to(beFalse())

                    // submit action
                    let shortCode = "123"
                    let validity = self.joinVM.searchForParty(with: shortCode)

                    expect((self.ctx.communicationService as! MockCommunicationService).currentlySearching).to(beFalse())
                    expect(validity).to(beFalse())
                }
            }

            context("with code > 4 digits") {
                it("does not start searching for parties") {
                    expect((self.ctx.communicationService as! MockCommunicationService).currentlySearching).to(beFalse())

                    // submit action
                    let longCode = "12345"
                    let validity = self.joinVM.searchForParty(with: longCode)

                    expect((self.ctx.communicationService as! MockCommunicationService).currentlySearching).to(beFalse())
                    expect(validity).to(beFalse())
                }
            }

            context("with exactly 4 digit code") {
                it("starts searching for parties") {
                    expect((self.ctx.communicationService as! MockCommunicationService).currentlySearching).to(beFalse())

                    // submit action
                    let goodCode = "1234"
                    let validity = self.joinVM.searchForParty(with: goodCode)

                    expect((self.ctx.communicationService as! MockCommunicationService).currentlySearching).to(beTrue())
                    expect(validity).to(beTrue())
                }
            }
        }
    }
}
