//
//  JoinPartyViewModel.swift
//  partyq
//
//  Created by Liam1 on 10/20/22.
//

import Foundation

class JoinPartyViewModel {
    
    private let ctx: Provider
    
    init(ctx: Provider) {
        self.ctx = ctx
    }
    
    /// Begins searching for party matching the input code, if valid
    /// - returns false if `code` isn't length 4, else returns true and searches for party
    func searchForParty(with code: String) -> Bool {
        if code.count != 4 {
            return false
        }
        ctx.communicationService.connectToParty(with: code)
        return true
    }
}
