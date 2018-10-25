//
//  InfoViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-24.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func infoBackHome(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "infoBackHomeSegue", sender: self)
    }
    
}
