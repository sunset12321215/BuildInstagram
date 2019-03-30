//
//  LoginCell.swift
//  Instagram
//
//  Created by mac on 3/25/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class LoginCell: UICollectionViewCell, NibReusable {

    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var imageLogin: UIImageView!
    
    func setContentForCell(_ data: Start) {
        descriptionLabel.text = data.description
        imageLogin.image = UIImage(named: data.image)
    }
}
