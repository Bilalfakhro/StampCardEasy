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
    
    var allItems = [String]()
    var currentItemNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        itemTextfield.text = allItems[currentItemNumber]
    }
    
    @IBAction func saveItem(_ sender: Any) {
        
        allItems[currentItemNumber] = itemTextfield.text!
        
        UserDefaults.standard.set(allItems, forKey: "items")
 
        // Tryck på knappen SAVE och gå tillbaka till SettingsViewcontroller.
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func listBackToSettings(_ sender: AnyObject) {
        print("Back to Settings!")
        self.performSegue(withIdentifier: "listBackToSettingsSegue", sender: self)
    }

}
