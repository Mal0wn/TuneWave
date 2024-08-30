//
//  AuthManager.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = ConfigManager.shared.clientID
        static let clientSecret = ConfigManager.shared.clientSecret
    }
    
    private init() {}
    
    public var signInUrl: URL? {
        let scopes = "user-read-private"
        let redirectURI = "github.com/Mal0wn/TuneWave/issues"
        let baseURL = "https://accounts.spotify.com/authorize"
        let urlString = "\(baseURL)?response_type=code&client_id=\(Constants.clientID ?? "")&scope=\(scopes)&redirect_uri=\(redirectURI)"
        return URL(string: urlString)
    }
    
    var isSignedIn : Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
