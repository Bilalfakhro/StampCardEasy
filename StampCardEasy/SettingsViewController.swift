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
    var items = [
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
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.section][indexPath.row]
        
        // Change background Color to trasparent
        cell.layer.backgroundColor = UIColor.clear.cgColor
        tableView.backgroundColor = .clear
        cell.backgroundColor = .clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("TRYCK PÅ RAD \(indexPath.row)")
        
        // Förberedd övergången till SettingsListViewController
        performSegue(withIdentifier: "itemDetailSegue", sender: indexPath.row)
    }
    
    // BackgroundColor and textColor
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        // Headers BackgroundColor
        view.tintColor = UIColor.red
        // Headers TextColor
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
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
        
        dest.allItems = items.
        dest.currentItemNumber = sender as! Int
        
        
    }
    
}
