//
//  DeeplinkManager.swift
//  partyq
//
//  Created by Liam1 on 10/2/22.
//

import Foundation

class DeeplinkManager {
    
    enum DeeplinkTarget: Equatable {
        case party                              /// Authenticated to create a party
        case errorScreen(errorMessage: String)  /// An error occured!
    }
    
    private class DeepLinkConstants { // TODO: create on spotify dev dashboard
        static let scheme = "partyq"
        static let host = "com.niehusst.partyq"
        static let path = "/spotify-login"
    }
    
    func manage(url: URL) -> DeeplinkTarget {
        guard url.scheme == DeepLinkConstants.scheme,
              url.host == DeepLinkConstants.host,
              url.path == DeepLinkConstants.path
        else { return .errorScreen(errorMessage: "Invalid deeplink: \(url.absoluteString)") }

        return .party
    }
}
