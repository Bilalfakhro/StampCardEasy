//
//  SignInViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-11-05.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKCoreKit
import FBSDKLoginKit

class SignInViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var segmentSelector: UISegmentedControl!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var facebookLoginButton: FBSDKLoginButton!
    
    var isSignIn:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        facebookLoginButton.delegate = self
        facebookLoginButton.readPermissions = ["email"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func segmentSelectorTapped(_ sender: UISegmentedControl) {
        print("Sign button tapped")
        
        // Flip the Boolean
        isSignIn = !isSignIn
        
        // Check the Bool and set the button and Labels
        if isSignIn {
            signInLabel.text = "Sign In"
            signInButton.setTitle("Sign In", for: .normal)
        }
        else {
            signInLabel.text = "Register"
            signInButton.setTitle("Register", for: .normal)
        }
    }
    
    @IBAction func signinButtonTapped(_ sender: UIButton) {
        print("Sign button tapped")
        
        // TODO: Do some form validation on the email and passeord.
        if let email = emailTextfield.text,
            let pass = passwordTextfield.text
        {
            // Check if it's sign in or register
            if isSignIn {
                // Sign in user with Firebase
                Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                    
                    // Check that user isn't nil
                    if user != nil {
                        // User is found, go to home screen
                        self.performSegue(withIdentifier: "goToHomeSegue", sender: self)
                    }
                    else {
                        // Error: check error and show message
                    }
                })
            }
            else {
                // Register the user with Firebase
                Auth.auth().createUser(withEmail: email, password: pass, completion: { (user, error) in
                    
                    // Check that user isn't nill
                    if user != nil {
                        // User is found, go to home screen
                        self.performSegue(withIdentifier: "goToHomeSegue", sender: self)
                    }
                    else {
                        // Error: check error and show message
                    }
                })
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Dismiss the keyboard when the view is tapped on
        emailTextfield.resignFirstResponder()
        passwordTextfield.resignFirstResponder()
    }
    
    @IBAction func facebookSignInButton(_ sender: UIButton) {
        print("Facebook Sign in button tapped")
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
