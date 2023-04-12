//
//  ViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.text = user.login
        passwordTF.text = user.password
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarViewController else { return }
            tabBarController.user = user
    }
    
    @IBAction private func loginButtonTapped() {
        guard usernameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(with: "Ooops!", Message: "Enter valid un and pw")
            passwordTF.text = ""
            return
        }
    }
    
    @IBAction private func forgotUsernameButtonTapped() {
        showAlert(with: "Valid username", Message: "Alexey")
    }
    
    @IBAction private func forgotPasswordButtonTapped() {
        showAlert(with: "Valid password", Message: "123")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        //usernameTF.text = ""
        //passwordTF.text = ""
    }
    
    private func showAlert(with title: String, Message message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

