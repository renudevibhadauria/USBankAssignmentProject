//
//  LoginViewController.swift
//  MVVMPracticeApplication
//
//  Created by Renu Devi on 22/11/19.
//  Copyright © 2019 Renu Devi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginOutlet: UIButton!

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func loginAction(_ sender: UIButton) {
        
        if username.text == "renu" && password.text == "devi" {
            self.performSegue(withIdentifier: "segueIdentifier", sender: self)
        }
        else {
            print("no user")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        loginOutlet.titleLabel?.adjustsFontForContentSizeCategory = true
        loginOutlet.titleLabel?.adjustsFontSizeToFitWidth = true
//        loginOutlet.titleLabel?.minimumScaleFactor = 0.5
    }
}
    

