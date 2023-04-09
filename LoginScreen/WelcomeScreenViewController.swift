//
//  WelcomeScreenViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 02.04.2023.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    var user: User!
    
    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = """
        Welcome, \(user.login)!
        My name is \(user.person.fullName).
        """
    }
    
}
