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
    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var titlePVC: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(user.person.name)"
        surnameLabel.text = "Surname: \(user.person.surname)"
        ageLabel.text = "Age: \(user.person.age)"
        companyLabel.text = "Company: \(user.person.company)"
        positionLabel.text = "Position: \(user.person.position)"
        userPhoto.image = UIImage(named: String(user.person.photo))
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
        titlePVC.title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BiographyViewController else { return }
        bioVC.user = user
    }
}



