//
//  RegisterUserViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-11-05.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController {
    
    @IBOutlet weak var emailAdressTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var repeatPasswordTextfield: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func cancelButtontapped(_ sender: Any) {
        
        print("Cancel button tapped")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        print("Sign Up button tapped")
        
        let userEmail = emailAdressTextfield.text
        let userPassword = passwordTextfield.text
        let userRepeatPassword = repeatPasswordTextfield.text

        // Validate required fields are not empty
        if   (userEmail!.isEmpty) ||
            (userPassword?.isEmpty)! ||
            (userRepeatPassword?.isEmpty)!
        {
            // Display Alert message and return.
            displayMessage(userMessage: "All fields are quired to fill in")
            return
        }
        // Validate password
        if
            (userPassword != userRepeatPassword)
            /*
            ((passwordTextfield.text?.elementsEqual(repeatPasswordTextfield.text!))! != true) */
        {
            // Display Alert message and return
            displayMessage(userMessage: "Please make sure that passwords match")
            return
        }
        
        // StoreData
        UserDefaults.standard.set(userEmail, forKey: "userEmail")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        
        
        // Display alert message with conformation
        var alertController = UIAlertController(title: "Alert", message: "Registration is succesfull. Thank You!", preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) {
            ACTION in
            self.dismiss(animated: true, completion: nil)
        }
        
        
        /*
        // Create Activity Indicator
        let myActivityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        
        // Position Activity Indicator in the center of the main view
        myActivityIndicator.center = view.center
        
        // If needed, you can prevent Activity Indicator from hiding when stopAnimating() is called
        myActivityIndicator.hidesWhenStopped = false
        
        // Start Activity Indicator
        myActivityIndicator.startAnimating()
        
        view.addSubview(myActivityIndicator)
        */

    }
    
    func displayMessage(userMessage:String) -> Void {
            DispatchQueue.main.async
            {
            var alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default)
            {
                (action:UIAlertAction!) in
                // Code ont this block will trigger when OK button tapped.
                print("Ok button tapped")
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }

}
