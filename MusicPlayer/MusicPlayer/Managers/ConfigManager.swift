//
//  ConfigManager.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import Foundation

final class ConfigManager {
    static let shared = ConfigManager()

    private init() {}

    private func loadPlist() -> [String: Any]? {
        guard let path = Bundle.main.path(forResource: "Config", ofType: "plist"),
              let dict = NSDictionary(contentsOfFile: path) as? [String: Any] else {
            return nil
        }
        return dict
    }

    var clientID: String? {
        return loadPlist()?["ClientID"] as? String
    }

    var clientSecret: String? {
        return loadPlist()?["ClientSecret"] as? String
    }
}

