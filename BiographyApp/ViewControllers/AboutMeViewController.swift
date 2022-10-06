//
//  AboutMeViewController.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 05.10.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surenameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    private let userData = UserData(userInformation: .getUserData())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = userData.userInformation.name
        surenameLabel.text = userData.userInformation.surename
        ageLabel.text = String(userData.userInformation.age)
        locationLabel.text = userData.userInformation.location
        
        editPhoto()
    }
    
    private func editPhoto() {
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.clipsToBounds = true
    }
}
