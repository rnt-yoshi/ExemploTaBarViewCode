//
//  MyTabBarController.swift
//  ExemploTabBarViewCode
//
//  Created by Renato Yoshinari on 23/07/22.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTabBarController()
    }
    
    private func setupTabBarController() {
        let home = UINavigationController(rootViewController: HomeViewController())
        let profile = UINavigationController(rootViewController: ProfileViewController())
        let setup = UINavigationController(rootViewController: SetupViewController())
        
        let viewControllers = [
            home,
            profile,
            setup
        ]
        self.setViewControllers(viewControllers, animated: true)
        self.tabBar.backgroundColor = .white
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Home"
        items[0].image = UIImage(systemName: "house")
        
        items[1].title = "Profile"
        items[1].image = UIImage(systemName: "person")
        
        items[2].title = "Setup"
        items[2].image = UIImage(systemName: "gear")
    }
}



