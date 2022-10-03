import Foundation
import Nimble
@testable import partyq
import Quick

class DeeplinkManagerTests: QuickSpec {
    let deeplinkManager = DeeplinkManager()

    override func spec() {
        describe("DeeplinkManager recieves deeplink") {
            context("with valid URL") {
                let validUrl = URL(string: "partyq://com.niehusst.partyq/spotify-login")!

                it("signals to launch the party view") {
                    let signaledView = self.deeplinkManager.manage(url: validUrl)
                    expect(signaledView).to(equal(.party))
                }
            }

            context("with invalid URL component") {
                it("bad host signals to launch error view") {
                    let badHostUrl = URL(string: "partyq://bad.host/spotify-login")!
                    let signaledView = self.deeplinkManager.manage(url: badHostUrl)
                    expect(signaledView).to(equal(.errorScreen(errorMessage: "Invalid deeplink: \(badHostUrl.absoluteString)")))
                }
                it("bad scheme signals to launch error view") {
                    let badSchemeUrl = URL(string: "badscheme://com.niehusst.partyq/spotify-login")!
                    let signaledView = self.deeplinkManager.manage(url: badSchemeUrl)
                    expect(signaledView).to(equal(.errorScreen(errorMessage: "Invalid deeplink: \(badSchemeUrl.absoluteString)")))
                }
                it("bad path signals to launch error view") {
                    let badPathUrl = URL(string: "partyq://com.niehusst.partyq/bad-path")!
                    let signaledView = self.deeplinkManager.manage(url: badPathUrl)
                    expect(signaledView).to(equal(.errorScreen(errorMessage: "Invalid deeplink: \(badPathUrl.absoluteString)")))
                }
            }
        }
    }
}
