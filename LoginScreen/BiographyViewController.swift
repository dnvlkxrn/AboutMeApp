//
//  BiographyViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 06.04.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    var user: User!
    
    @IBOutlet var textBio: UITextView!
    @IBOutlet var titleBVC: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleBVC.title = "\(user.person.fullName) bio"
        textBio.text = user.person.bio
    }
}
