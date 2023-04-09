//
//  TabBarViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 05.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
   
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeScreenViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? PersonViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
}
