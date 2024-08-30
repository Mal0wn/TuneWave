//
//  String+Extension.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import Foundation

extension String {
    /// Return localize version of the string
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
