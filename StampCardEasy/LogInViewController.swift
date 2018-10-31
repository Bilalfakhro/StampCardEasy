//
//  LogInViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-31.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class LogInViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Kolla om inloggad
        if(FBSDKAccessToken.current() != nil)
        {
            print("LOGGED IN")
            loginButton.setTitle("Logout", for: .normal)
            getUserName()
        } else {
            print("NOT LOGGED IN")
            loginButton.setTitle("Login", for: .normal)
        }
    }
    
    @IBAction func letsLogin(_ sender: Any) {
        let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
        
        if(FBSDKAccessToken.current() != nil)
        {
            // LOGGA UT
            fbLoginManager.logOut()
            loginButton.setTitle("Login", for: .normal)
        } else {
            // LOGOUT
            fbLoginManager.logIn(withReadPermissions: ["public_profile", "email", "user_friends"], from: self) { (result, error) -> Void in
                
            if(error != nil)
            {
                print("LOGIN ERROR")
            } else {
                print("LOGIN OK")
            }
        }
    }
}
    
    func getUserName() {
        // Hämta ut graph api
        let graphRequest: FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "name, email"])

        graphRequest.start(completionHandler: { (connection, result, error) -> Void in
            
            if(error == nil)
            {
                print("GRAPH OK")
                
                var fbRes = result as! NSDictionary
                print(fbRes.value(forKey: "name") as! String)
                self.nameLabel.text = fbRes.value(forKey: "name") as! String
            } else {
                print("GRAPH ERROR")
            }
        })
        graphRequest.start(completionHandler: { (connection, result, error) -> Void in
            
            if(error == nil)
            {
                print("GRAPH OK")
                
                var fbRes = result as! NSDictionary
                print(fbRes.value(forKey: "email") as! String)
                self.emailLabel.text = fbRes.value(forKey: "email") as! String
            } else {
                print("GRAPH ERROR")
            }
        })
    }
}
