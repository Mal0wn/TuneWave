//
//  CAGradientLayer+Extension.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import Foundation
import UIKit

extension CAGradientLayer {
    static func createGradientLayer(fromColor startColor: UIColor, toColor endColor: UIColor, frame: CGRect) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        return gradientLayer
    }
}

