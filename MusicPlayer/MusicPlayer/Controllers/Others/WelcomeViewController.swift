//
//  WelcomeViewController.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signInButton: UIButton = {
       let btn = UIButton()
        btn.backgroundColor = .tealBlue
        btn.setTitle("SignSpotify".localized, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 6
        return btn
    }()
    
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
        
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(
            x: 20,
            y: view.height-50-view.safeAreaInsets.bottom,
            width: view.width-40,
            height: 50)
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = { success in
            DispatchQueue.main.async {
                self.handleSignIn(success : success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        // Log user in or yell at them for error
        
    }
    
}
