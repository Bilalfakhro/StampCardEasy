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
    @IBAction func qrCodeButton(_ sender: AnyObject) {
      //  print("button pressed")
        self.performSegue(withIdentifier: "qrCodeSegue", sender: self)
    }
    @IBAction func addPlaceButton(_ sender: AnyObject){
     //   print("button pressed")
        self.performSegue(withIdentifier: "addPlaceSegue", sender: self)
    }
    @IBAction func profileButton(_ sender: AnyObject) {
     //   print("button pressed")
        self.performSegue(withIdentifier: "profileSegue", sender: self)
    }
    @IBAction func purchaseButton(_ sender: AnyObject) {
     //   print("button pressed")
        self.performSegue(withIdentifier: "purchaseSegue", sender: self)
    }
    @IBAction func settingsButton(_ sender: AnyObject) {
     //   print("button pressed")
        self.performSegue(withIdentifier: "settingsSegue", sender: self)
    }
    @IBAction func infoButton(_ sender: AnyObject) {
    //    print("button pressed")
        self.performSegue(withIdentifier: "infoSegue", sender: self)
    }
    
    // X-button from qrcodescanner view.
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }

}

