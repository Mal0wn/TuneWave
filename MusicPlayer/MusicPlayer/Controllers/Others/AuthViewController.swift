//
//  AuthViewController.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import UIKit

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SignIn".localized
        view.backgroundColor = .white
        
        let gradientLayer = CAGradientLayer.createGradientLayer(
            fromColor: UIColor.blueNonPhotoPastel,
            toColor: UIColor.pinkPastel,
            frame: view.bounds
        )
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
