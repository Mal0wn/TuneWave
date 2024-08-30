//
//  AuthViewController.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {
    
    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        let config = WKWebViewConfiguration()
        prefs.allowsContentJavaScript = true
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        
        return webView
    }()
    
    public var completionHandler: ((Bool) -> Void)?

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
        view.addSubview(webView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }

}
