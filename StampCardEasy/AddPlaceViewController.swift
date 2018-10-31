//
//  AddPlaceViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-24.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class AddPlaceViewController: UIViewController {
    
    @IBOutlet weak var addPlaceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addPlaceToQR(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "addPlaceToQRSegue", sender: self)
    }
    
    @IBAction func addPlaceBackHome(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "addPlaceBackHomeSegue", sender: self)
    }
    
}
