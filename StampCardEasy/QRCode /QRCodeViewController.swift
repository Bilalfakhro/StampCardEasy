//
//  QRCodeViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func qrCodeBackHome(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "qrCodeBackHomeSegue", sender: self)
    }
    
}
