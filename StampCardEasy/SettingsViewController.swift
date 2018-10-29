//
//  SettingsViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-24.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
   let sections = ["Your Details", "Your Prefereces", "Your Account", "Information"]
   let items = [
        ["Name", "Email", "Birth Date", "Phone Number", "City"], // Your Details.
        ["Date Format", "Distans Settings", "Around Me Distance"], // Your Details.
        ["Privacy Policy (GDPR)", "User Terms & Conditions", "Request Personal Data", "Deactivate & Delete Personal Data", "Change Password", "Logout"], // Your Account.
        ["App Version", "How It Works", "Refer A Business", "Feedback / Contact Us", "FAQ´s"]] // Your Details.

    
    @IBOutlet weak var myTableView: UITableView!
    
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
    
}
