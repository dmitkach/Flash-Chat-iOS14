//
//  ChatViewController.swift
//  Flash Chat
//
//  Created by Dmitry Tkach on 05.01.2021.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backItem?.setHidesBackButton(true, animated: true)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func signOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
