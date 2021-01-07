//
//  WelcomeViewController.swift
//  Flash Chat
//
//  Created by Dmitry Tkach on 05.01.2021.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        
        let titleText = "⚡️FlashChat"
        var charDelay = 1.0
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charDelay, repeats: false) { _ in
                self.titleLabel.text?.append(letter)
            }
            charDelay += 1
        }

       
    }
    

}
