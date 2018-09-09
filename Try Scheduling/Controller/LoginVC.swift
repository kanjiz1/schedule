//
//  ViewController.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/8/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTxtField: InSetTextField!
    @IBOutlet weak var passwordTxtField: InSetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTxtField.delegate = self
        passwordTxtField.delegate = self
    }
    
    @IBAction func signInWasPressed(_ sender: Any) {
        if emailTxtField.text != nil && passwordTxtField.text != nil {
            
        }
    }
}

