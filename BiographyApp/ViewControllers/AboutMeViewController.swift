//
//  AboutMeViewController.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 05.10.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        locationLabel.text = user.person.location
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? BiographyViewController else { return }
        imageVC.user = user
    }
}
