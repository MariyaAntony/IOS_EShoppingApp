//
//  ProfileVC.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    
    @IBOutlet weak var email: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = userObj1.name
        
email.text = userObj1.emailId

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
