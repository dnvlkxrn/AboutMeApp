//
//  PersonViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 06.04.2023.
//

import UIKit

class PersonViewController: UIViewController {
    
    var user: User!

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    @IBOutlet var userPhoto: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(user.person.name)"
        surnameLabel.text = "Surname: \(user.person.surname)"
        ageLabel.text = "Age: \(user.person.age)"
        companyLabel.text = "Company: \(user.person.company)"
        positionLabel.text = "Position: \(user.person.position)"
        userPhoto = user.person.photo
        
        
    }
    
    
}



