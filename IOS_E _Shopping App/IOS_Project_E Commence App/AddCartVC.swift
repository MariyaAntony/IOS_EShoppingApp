//
//  AddCardVC.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-18.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

class AddCartVC: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var pickerArray = ["Phone","Computer"]
    
    var currentView = true
    
    
    @IBOutlet weak var modelText: UITextField!
    
    
    @IBOutlet weak var descriptionText: UITextField!
    
    @IBOutlet weak var priceText: UITextField!
    
    
    @IBOutlet weak var quantiyText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        print("\(pickerArray[row])")
        
        var pickerSelect = pickerArray[row]
        
        if pickerArray[row] == "Phone"
        {
            print("Displaying phone Array")
            
            currentView = true //
            var newResult = productArray //
           // self.myTableView.reloadData()
            
        }
        else //if pickerValueData[row] == "My Movies"
        {
            print("Displaying Movies Array")
            
            currentView = false //
            var newResult1 = productArray //
          //  self.myTableView.reloadData() //
        }
        
        
    }
    
    
    @IBAction func saveProductDetails(_ sender: Any)
    {
        
       /* var alert = UIAlertController(title: "Message", message: "Product successfully added to cart", preferredStyle: .alert)
        var okBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okBtn)
        
        if (modelText.text != "") || (descriptionText.text != "") || (priceText.text != "") || (quantiyText.text != "")
        {
            self.present(alert, animated: true, completion: nil)
        }*/
    
        var productOb = Product()
        
        productOb.name = modelText.text!
        
        productOb.description = descriptionText.text!
        
        productOb.price = priceText.text!
        
        productOb.quantity = Int(quantiyText.text!)!
        
        productArray.append(productOb)
        
        self.performSegue(withIdentifier: "identifier6", sender: self)
        
        
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
