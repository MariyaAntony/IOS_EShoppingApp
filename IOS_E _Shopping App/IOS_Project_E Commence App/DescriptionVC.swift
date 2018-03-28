//
//  DescriptionVC.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

var cartArray = [Product]()

class DescriptionVC: UIViewController {

    
    
    @IBOutlet weak var productImage: UIImageView!
    
    

    @IBOutlet weak var productPrice: UILabel!
 
    
    
    @IBOutlet weak var productModel: UILabel!
    
    
    @IBOutlet weak var descriptionText: UITextView!
    var productObj2 = Product()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        productImage.image = UIImage(named: productObj.image)
        
        productPrice.text = productObj.price
        
        productModel.text = productObj.model
        
        descriptionText.text = productObj.description

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addToCart(_ sender: Any)
    {
        cartArray.append(productObj)
        
        self.performSegue(withIdentifier: "identifier7", sender: self)
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
