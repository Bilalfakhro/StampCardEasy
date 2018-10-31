//
//  settingsListViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-29.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class SettingsListViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var settingsListLabel: UILabel!
    
    var allItems = [String]()
    var currentItemNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        itemTextField.text = allItems[currentItemNumber]
    }
    
    @IBAction func saveItem(_ sender: Any) {
        
        allItems[currentItemNumber] = itemTextField.text!
        
        UserDefaults.standard.set(allItems, forKey: "items")
        
        // Tryck på knappen change och gå tillbaka till viewcontroller
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func settingsListBackToSettings(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "settingsItemBackToSettingsSegue", sender: self)
    }

}
