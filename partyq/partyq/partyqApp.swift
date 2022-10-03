import SwiftUI

@main
struct partyqApp: App {
    
    @State var deeplinkTarget: DeeplinkManager.DeeplinkTarget?
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch self.deeplinkTarget {
                case .party:
                    Text("Lets get this party started!") // TODO: make real view
                case let .errorScreen(errorMessage):
                    Text("Got error: \(errorMessage)") // TODO: make real view
                case .none:
                    // normal launch of the app w/o deeplink
                    MainView()
                }
            }
            .onOpenURL { url in
                let deeplinkManager = DeeplinkManager()
                let deeplink = deeplinkManager.manage(url: url)
                self.deeplinkTarget = deeplink
            }
        }
    }
}
