//
//  ProfilePageViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-11-05.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class ProfilePageViewController: UIViewController {
    
    @IBOutlet weak var userFullNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sigOutButtonTapped(_ sender: Any) {
        print("Sign Out button tapped")
        
    }
    
    @IBAction func loadMemberProfileButtonTapped(_ sender: Any) {
        print("Load member profile button tapped")
        
    }
    

}
