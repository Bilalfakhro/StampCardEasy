//
//  ProfileViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-24.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileNameTextfield: UITextField!
    @IBOutlet weak var profileEmailTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func profileSettingsButton(_ sender: Any) {
    }
    @IBAction func profileLogoutButton(_ sender: Any) {
    }
    
    // BACK HOME
    @IBAction func profileBackHome(_ sender: AnyObject){

        print("bravo")
        self.performSegue(withIdentifier: "profileBackHomeSegue", sender: self)
    }
    
}
