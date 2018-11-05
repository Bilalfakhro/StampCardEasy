//
//  MainViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var qrScanner: UIButton!
    @IBOutlet weak var profile: UIButton!
    @IBOutlet weak var settings: UIButton!
    @IBOutlet weak var loggout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("view has loaded!")
    }
    
    // QuickScanner Buttons on MainViewController
    @IBAction func qrScannerButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "qrScannerSegue", sender: self)
    }
    
    // Profile Buttons on MainViewController
    @IBAction func profileButton(_ sender: Any) {
    
    print("Profile Button pressed")
    self.performSegue(withIdentifier: "profileSegue", sender: self)
    }
    
    // Settings Buttons on MainViewController
    @IBAction func settingsButton(_ sender: Any) {
    
    print("Settings Button pressed")
    self.performSegue(withIdentifier: "settingsSegue", sender: self)
    }
    
    
    @IBAction func loggoutButton(_ sender: Any) {
    
     print("Loggout Button pressed")
    self.performSegue(withIdentifier: "loggoutSegue", sender: self)
    }
}

