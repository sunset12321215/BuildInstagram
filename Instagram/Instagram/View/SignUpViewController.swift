//
//  SignUpViewController.swift
//  Instagram
//
//  Created by mac on 3/31/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    @IBOutlet private weak var emailTextField: HSUnderLineTextField!
    @IBOutlet private weak var passwordTextField: HSUnderLineTextField!
    @IBOutlet private weak var passwordConfirmTextField: HSUnderLineTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToPrevious(_ sender: Any?) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signupButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text ?? "", password: passwordTextField.text ?? "") { authResult, error in
            guard error != nil else {
                return }
            self.backToPrevious(nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
