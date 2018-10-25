//
//  ProfileViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-24.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func profileBackHome(_ sender: AnyObject) {
        print("bravo")
        self.performSegue(withIdentifier: "profileBackHomeSegue", sender: self)
    }
    
}
