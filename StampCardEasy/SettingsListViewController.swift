//
//  settingsListViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-29.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class SettingsListViewController: UIViewController {

    @IBOutlet weak var itemTextfield: UITextField!
    @IBOutlet weak var settingsListLabel: UILabel!
    
    var theitem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        itemTextfield.text = theitem
    }
    
    // SAVE data on device.
    @IBAction func saveItem(_ sender: Any) {
        
        theitem = itemTextfield.text!
        
        UserDefaults.standard.set(theitem, forKey: theitem)
 
        // Tryck på knappen SAVE och gå tillbaka till SettingsViewcontroller.
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func listBackToSettings(_ sender: Any) {
        print("Back to Settings!")
        self.dismiss(animated: false, completion: nil) 
    }

}
