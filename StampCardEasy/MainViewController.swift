//
//  MainViewController.swift
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
    
    // QuickScanner Buttons on MainViewController
    @IBAction func qrScannerButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "qrCodeScannerSegue", sender: self)
    }
    // Add a Place Buttons on MainViewController
    @IBAction func addPlaceButton(_ sender: UIButton){
        print("button pressed")
        self.performSegue(withIdentifier: "addPlaceSegue", sender: self)
    }
    // Profile Buttons on MainViewController
    @IBAction func profileButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "profileSegue", sender: self)
    }
    // Purchase Buttons on MainViewController
    @IBAction func purchaseButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "purchaseSegue", sender: self)
    }
    // Settings Buttons on MainViewController
    @IBAction func settingsButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "settingsSegue", sender: self)
    }
    // Info Buttons on MainViewController
    @IBAction func infoButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "infoSegue", sender: self)
    }
   
}

