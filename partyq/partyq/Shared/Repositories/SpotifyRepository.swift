//
//  SpotifyRepository.swift
//  partyq
//
//  Created by Liam1 on 9/30/22.
//

import SpotifyiOS

protocol SpotifyRepositoryProtocol {
    func setup(config: SPTConfiguration)
    func connect()
    func disconnect()
}

// calls to spotify sdk are expected to be done from the main thread
class SpotifyRepository: SpotifyRepositoryProtocol {
    
    var appRemote: SPTAppRemote?
    
    func setup(config: SPTConfiguration) {
        appRemote = SPTAppRemote(configuration: config, logLevel: .debug) // TODO: dont want debug in prod
//        appRemote.connectionParameters.accessToken = self.accessToken
//        appRemote.delegate = self
    }
    
    func connect() {
        
    }
    
    func disconnect() {
        
    }
}
