//
//  RegisterVC.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController
{

    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerClick1(_ sender: Any)
    {
        var alert = UIAlertController(title: "Error Msg", message: "Fields cannot be empty..!", preferredStyle: .alert)
        var okBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okBtn)
        
        if (nameText.text == "") || (emailText.text == "") || (passwordText.text == "")
        {
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            self.performSegue(withIdentifier: "identifier2", sender: self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        userObj1.name = nameText.text!
        userObj1.emailId = emailText.text!
        userObj1.password = passwordText.text!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
}
