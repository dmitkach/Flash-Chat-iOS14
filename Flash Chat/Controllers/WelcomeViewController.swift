//
//  WelcomeViewController.swift
//  Flash Chat
//
//  Created by Dmitry Tkach on 05.01.2021.
//

import CLTypingLabel
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
       
    }
    

}
