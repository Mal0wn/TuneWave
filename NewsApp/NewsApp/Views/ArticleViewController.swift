//
//  ArticleViewController.swift
//  NewsApp
//
//  Created by Marine Michelot on 27/07/2024.
//

import Foundation

import UIKit
import WebKit

class ArticleViewController: UIViewController {
    var articleURL: String?
    private var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        if let urlString = articleURL, let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
