//
//  Colors.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import Foundation

import UIKit

extension UIColor {
    
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
            let red = CGFloat((hex >> 16) & 0xFF) / 255.0
            let green = CGFloat((hex >> 8) & 0xFF) / 255.0
            let blue = CGFloat(hex & 0xFF) / 255.0
            self.init(red: red, green: green, blue: blue, alpha: alpha)
        }
    
    static let primaryColor = UIColor.systemBlue
    static let secondaryColor = UIColor.systemGray
    static let accentColor = UIColor.systemRed
    static let backgroundColor = UIColor.systemBackground

    // Example with RGB
    static let customGreen = UIColor(red: 0.0/255.0, green: 180.0/255.0, blue: 130.0/255.0, alpha: 1.0)
    static let customYellow = UIColor(red: 255.0/255.0, green: 204.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    
    // Example with Hex
    static let yellowPastel = UIColor(hex: 0xFBF8CC)
    static let orangePastel = UIColor(hex: 0xFDE4CF)
    static let redPastel = UIColor(hex: 0xFFCFD2)
    static let pinkPastel = UIColor(hex: 0xF1C0E8)
    static let mauvePastel = UIColor(hex: 0xCFBAF0)
    static let JordybluePastel = UIColor(hex: 0xA3C4F3)
    static let blueNonPhotoPastel = UIColor(hex: 0x90DBF4)
    static let blueElectricPastel = UIColor(hex: 0x8EECF5)
    static let aquaMarinePastel = UIColor(hex: 0x98F5E1)
    static let greenApplePastel = UIColor(hex: 0xB9FBC0)
}
