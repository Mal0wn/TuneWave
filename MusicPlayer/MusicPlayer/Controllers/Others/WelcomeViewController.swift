//
//  WelcomeViewController.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TuneWave"
        view.backgroundColor = .white
        
        // Create gradient
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.blueNonPhotoPastel.cgColor, UIColor.pinkPastel.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        // add gradient like under layer of the view 
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
