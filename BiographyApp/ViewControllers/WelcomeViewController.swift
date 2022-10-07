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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 5
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}
