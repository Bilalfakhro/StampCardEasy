//
//  ViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("view has loaded!")
    }
    @IBAction func qrCodeButton(_ sender: Any) {
        print("button pressed")
        self.performSegue(withIdentifier: "qrCodeSegue", sender: self)
    }
}
