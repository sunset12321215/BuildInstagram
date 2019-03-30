//
//  HomeViewController.swift
//  
//
//  Created by mac on 3/27/19.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder ?? "",
                                                             attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
    }
}
