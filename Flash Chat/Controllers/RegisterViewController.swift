//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Dmitry Tkach on 05.01.2021.
//
import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorTextfield: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorTextfield.text = ""
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            if email != "", password != "" {
                Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                    if let error = error {
                        self.errorTextfield.text = error.localizedDescription
                        return
                    }
                    self.performSegue(withIdentifier: "RegistrationToChatSegue", sender: self)
                }
            }
        }
    }
    
}
