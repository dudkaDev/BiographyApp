//
//  BiographyViewController.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 06.10.2022.
//

import UIKit

class BiographyViewController: UIViewController {
    
    @IBOutlet var biographyLabel: UILabel!
    
    private let userData = UserData(userInformation: .getUserData())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = userData.userInformation.userBiography
    }
}
