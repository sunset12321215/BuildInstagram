//
//  LogInViewController.swift
//  Instagram
//
//  Created by mac on 3/27/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

final class LogInViewController: UIViewController {
    
    @IBOutlet private weak var emailTextField: HSUnderLineTextField!
    @IBOutlet private weak var passWordTextField: HSUnderLineTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToPrevious(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signInButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text ?? "", password: passWordTextField.text ?? "") { (user, error) in
            guard user != nil else { return }
            self.performSegue(withIdentifier: "gotoMain", sender: self)
        }
    }
}
