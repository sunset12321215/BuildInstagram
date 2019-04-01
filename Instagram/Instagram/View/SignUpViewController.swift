//
//  SignUpViewController.swift
//  Instagram
//
//  Created by mac on 3/31/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToPrevious(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signupButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: "sunset@gmail.com", password: "Cuong2312414") { authResult, error in
            guard error != nil else {
                return
            }
            print(error?.localizedDescription)
        }
    }
}
