//
//  SettingsViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-24.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    let sections = ["Your Details", "Your Account", "Information"]
    var theItems = [
        ["Name", "Email", "Birth Date", "Phone Number", "City"], // Your Details.
        ["Privacy Policy (GDPR)", "Deactivate & Delete Personal Data", "Logout"], // Your Account.
        ["App Version", "Feedback / Contact Us"]] // Information.

    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }
    
    // TABLEVIEW Header...
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.sections[section]
    }
    
    // TABLEVIEW hur många sektioner...
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.sections.count
    }
    
    // TABLEVIEW hur många rader...
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return theItems[section].count
    }
    
    // TABLEVIEW hur många sektioner...
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // TABLEVIEW behöver en rad.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! itemTableViewCell
        cell.itemNameLabel.text = theItems[indexPath.section][indexPath.row]
        
        
        // Change background Color to trasparent
        cell.layer.backgroundColor = UIColor.clear.cgColor
        tableView.backgroundColor = .clear
        cell.backgroundColor = .clear
        
        return cell
    }
    
    // KLICKA på en rad...
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("TRYCK PÅ RAD \(indexPath.row)")
        
        // Förberedd övergången till SettingsListViewController
        performSegue(withIdentifier: "itemDetailSegue", sender: indexPath.row)
    }
    
    // TABLEVIEW BackgroundColor and textColor
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        // Headers BackgroundColor
        view.tintColor = UIColor.red
        // Headers TextColor
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if let theSavedList = UserDefaults.standard.object(forKey: "items") as? [String]
        {
            theItems = [theSavedList]
        }
        // LADDA om VC.
            myTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be reloaded.
    }
    
    @IBAction func settingsBackHome(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "settingsBackHomeSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination as! SettingsListViewController
       
        dest.allItems = sender as! [String]
        dest.currentItemNumber = sender as! Int

        
    }
    
}
