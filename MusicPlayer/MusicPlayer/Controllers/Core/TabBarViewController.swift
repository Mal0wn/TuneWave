//
//  TabBarViewController.swift
//  MusicPlayer
//
//  Created by Marine Michelot on 29/08/2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create instance for each viewController which will be the page of the tabBar
        let vc1 = HomeViewController()
        let vc2 = SearchViewController()
        let vc3 = LibraryViewController()
        
        // Define display title for each view controller which will display on page
        vc1.title = "Home".localized
        vc2.title = "Search".localized
        vc3.title = "Library".localized
        
        // Force display large title
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
       // Creation UINavigationController for each ViewController.
       // Each ViewController are insert in UINavigationController for has a navigation bar .
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        // Add icon bar
        nav1.tabBarItem = UITabBarItem(title: "Home".localized, image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Search".localized, image: UIImage(systemName: "magnifyingglass"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Library".localized, image: UIImage(systemName: "books.vertical"), tag: 3)
        
        
        // Configure the display of large titles in UINavigationControllers.
        // This allows to have larger and more visible titles in the navigation bar.
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        // Add UINavigationControllers to the TabBarController.
        // This makes each navigation controller appear as a separate tab in the tab bar.
        self.setViewControllers([nav1, nav2, nav3], animated: false)
    }
}
