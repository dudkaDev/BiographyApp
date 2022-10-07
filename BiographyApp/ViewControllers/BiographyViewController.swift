//
//  BiographyViewController.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 06.10.2022.
//

import UIKit

class BiographyViewController: UIViewController {
    
    @IBOutlet var userBioTF: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userBioTF.text = user.person.bio
    }
}
