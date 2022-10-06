//
//  WelcomeViewController.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 05.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    var transmittedUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 5
        welcomeLabel.text = "Welcome \(transmittedUserName ?? "")"
    }
}
