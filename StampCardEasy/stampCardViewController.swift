//
//  stampCardViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class stampCardViewController: UIViewController {
    
    @IBOutlet weak var stampCardBlueImage: UIImageView!
    
    @IBOutlet weak var box0: UIButton!
    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    @IBOutlet weak var box3: UIButton!
    @IBOutlet weak var box4: UIButton!
    @IBOutlet weak var box5: UIButton!
    @IBOutlet weak var box6: UIButton!
    @IBOutlet weak var box7: UIButton!
    @IBOutlet weak var box8: UIButton!
    @IBOutlet weak var box9: UIButton!
    
    var boxOn = UIImage(named: "checkBox")
    var boxOff = UIImage(named: "unCheckBox")
    
    var isBoxClicked: Bool!
    //    var isBoxHidden: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBoxClicked = false
        view.backgroundColor = UIColor.white
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func boxZero(_ sender: UIButton) {
        
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box0.setImage(boxOn, for: UIControl.State.normal)
            // self.view.backgroundColor = UIColor.red
            
            // HIDE the rest of the boxes.
            // box1.isHidden = true
            // box2.isHidden = true
        } else {
            box0.setImage(boxOff, for: UIControl.State.normal)
            // self.view.backgroundColor = UIColor.white
            
            // HIDE the rest of the boxes.
            // box1.isHidden = false
            // box2.isHidden = false
        }
    }
    @IBAction func boxOne(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box1.setImage(boxOn, for: UIControl.State.normal)
            // self.view.backgroundColor = UIColor.red
            
            // HIDE the rest of the boxes.
            // box1.isHidden = true
            // box2.isHidden = true
        } else {
            box1.setImage(boxOff, for: UIControl.State.normal)
            // self.view.backgroundColor = UIColor.white
            
            // HIDE the rest of the boxes.
            // box1.isHidden = false
            // box2.isHidden = false
        }
    }
    @IBAction func boxTwo(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box2.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box2.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxThree(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box3.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box3.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxFour(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box4.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box4.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxFive(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box5.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box5.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxSix(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box6.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box6.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxSeven(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box7.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box7.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxEight(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box8.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box8.setImage(boxOff, for: UIControl.State.normal)
        }
    }
    @IBAction func boxNine(_ sender: UIButton) {
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box9.setImage(boxOn, for: UIControl.State.normal)
        } else {
            box9.setImage(boxOff, for: UIControl.State.normal)
        }
    }


    @IBAction func stampCardFacebook(_ sender: Any) {
        print("Facebook")
        
    }
    @IBAction func stampCardInstagram(_ sender: Any) {
        print("Instagram")
    }
    @IBAction func stampCardContact(_ sender: Any) {
        print("Contact")
    }
    
    @IBAction func stampCardBackHome(_ sender: AnyObject) {
        print("Back Home!")
        self.performSegue(withIdentifier: "stampBackHome", sender: self)
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        print("Logged out")
    }
 
 }

