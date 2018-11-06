//
//  SignInViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-11-05.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class SignInViewController: UIViewController, FBSDKLoginButtonDelegate {

    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var userPasswordTextfield: UITextField!
    @IBOutlet weak var facebookLoginButton: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        facebookLoginButton.delegate = self
        facebookLoginButton.readPermissions = ["email"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        print("Sign in button tapped")
        
    }
    
    @IBAction func registerNewAccountButtonTapped(_ sender: Any) {
        
        print("Register account button tapped")
       
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterUserViewController") as! RegisterUserViewController
        
        self.present(registerViewController, animated: true)
        
        
    }
 
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if let error = error {
            print("Error took \(error.localizedDescription)")
            return
        }
        print("Success")
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User signed out")
    }
    

}
