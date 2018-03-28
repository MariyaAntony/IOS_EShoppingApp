//
//  ViewController.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

var label = "user"
var userObj1 = User()

var userArray = [User]()

class LoginVC: UIViewController {

  
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func registerClick(_ sender: Any)
    {
        self.performSegue(withIdentifier: "identifier1", sender: self)
    }

    
    @IBAction func loginClick(_ sender: Any)
    {
        if (userObj1.emailId == usernameText.text && userObj1.password == passwordText.text)
        {
             label = "user"
            self.performSegue(withIdentifier: "identifier3", sender: self)// this event is for go to welcome screen********incomplete***** identifier*****
        }
        else if (usernameText.text == "admin" && passwordText.text == "admin123")
        {
            label = "admin"
            self.performSegue(withIdentifier: "identifier3", sender: self)
        }
        else
        {
            var alert = UIAlertController(title: "Error Msg", message: "Enter correct username or password", preferredStyle: .alert)
            
            var okBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okBtn)
            
            self.present(alert, animated: true, completion: nil)
            
        }
        // have to complete************
    }
   
    
    
}

