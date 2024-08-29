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
        
        let gradientLayer = CAGradientLayer.createGradientLayer(
            fromColor: UIColor.blueNonPhotoPastel,
            toColor: UIColor.pinkPastel,
            frame: view.bounds
        )
        
        
        // add gradient like under layer of the view
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
