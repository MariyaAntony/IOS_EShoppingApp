//
//  ProductsVC.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

var productObj = Product()

var productArray = productObj.productList()

class ProductsVC: UIViewController, UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    var sectionTitle = ["Phone","Computer"]
    
    var phoneCount = 0
    
    var computerCount = 0
    
    var array_phone = [Product]()
    
    var array_computer = [Product]()
    
    var searchActive = false
    
    var tempPhoneArray = [Product]()
    
    var tempComputerArray = [Product]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        nameLabel.text = userObj1.name
        
        addButton.isEnabled = false
        for val in productArray
        {
            if val.productType == "Phone"
            {
                print("\(val.name)")
                array_phone.append(val)
                phoneCount = phoneCount + 1
            }
            else
            {
                print("\(val.name)")
                array_computer.append(val)
                computerCount = computerCount + 1
            }
        }
        
        if label == "admin"
        {
            addButton.isEnabled = true
        }
        else 
        {
            addButton.isEnabled = false
        }
      //  productArray = productObj.productList()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        if searchActive == true
        {
            if section == 0
            {
                print("phone :\(phoneCount)")
                return tempPhoneArray.count
            }
            else
            {
                print(" computer :\(computerCount)")
                return tempComputerArray.count
            }
        }
        else
        {
            if section == 0
            {
                print("phone :\(phoneCount)")
                return array_phone.count
            }
            else
            {
                print(" computer :\(computerCount)")
                return array_computer.count
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCustomCell
        
        //let myProduct = productArray[indexPath.row]
        
        //let myPhone = array_phone[indexPath.row]
        
        //let myComputer = array_computer[indexPath.row]
        if searchActive == true
        {
        if (indexPath.section == 0 )
        {
            
        cell.deviceName.text = tempPhoneArray[indexPath.row].name
        
        cell.devicePrice.text = tempPhoneArray[indexPath.row].price
        
        cell.deviceQuantity.text = String(tempPhoneArray[indexPath.row].quantity)

        cell.deviceImage.image = UIImage(named: tempPhoneArray[indexPath.row].image)
        }
        else if (indexPath.section == 1 )
        {
            cell.deviceName.text = tempComputerArray[indexPath.row].name
            
            cell.devicePrice.text = tempComputerArray[indexPath.row].price
            
            cell.deviceQuantity.text = String(tempComputerArray[indexPath.row].quantity)
            
            cell.deviceImage.image = UIImage(named: tempComputerArray[indexPath.row].image)
        }
        }
        else
        {
            if (indexPath.section == 0 )
            {
                
                cell.deviceName.text = array_phone[indexPath.row].name
                
                cell.devicePrice.text = array_phone[indexPath.row].price
                
                cell.deviceQuantity.text = String(array_phone[indexPath.row].quantity)
                
                cell.deviceImage.image = UIImage(named: array_phone[indexPath.row].image)
            }
            else if (indexPath.section == 1 )
            {
                cell.deviceName.text = array_computer[indexPath.row].name
                
                cell.devicePrice.text = array_computer[indexPath.row].price
                
                cell.deviceQuantity.text = String(array_computer[indexPath.row].quantity)
                
                cell.deviceImage.image = UIImage(named: array_computer[indexPath.row].image)
            }
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return sectionTitle[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.section == 0
        {
       productObj = array_phone[indexPath.row]
        
        self.performSegue(withIdentifier: "identifier4", sender: self)
        }
        
        else
        {
            productObj = array_computer[indexPath.row]
            
            self.performSegue(withIdentifier: "identifier4", sender: self)
        }

        
    }
    
    
    @IBAction func toAddProduct(_ sender: Any)
    {
        self.performSegue(withIdentifier: "identifier5", sender: self)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
       var obj = Product()
        
        print("Searching \(searchBar.text)")
        
        if (searchBar.text?.isEmpty)!
        {
            self.searchActive = false
        }
        else
        {
            
            self.searchActive = true
            self.tempComputerArray.removeAll()
            self.tempPhoneArray.removeAll()
            for index in array_phone
                {
                    // let dogInfo = dogsArray[index]
                    let productName = index.name.lowercased()
                    
                    if(productName.range(of: searchText.lowercased(),options: .regularExpression) != nil)
                    {
                        /*obj.name = index.name
                        obj.image = index.image
                        obj.price = index.price
                        obj.quantity = index.quantity*/
                        
                        tempPhoneArray.append(index)
                    }
                 }
            for index in array_computer
            {
                // let dogInfo = dogsArray[index]
                let productName = index.name.lowercased()
                
                if(productName.range(of: searchText.lowercased(),options: .regularExpression) != nil)
                {
                   /* obj.name = index.name
                    obj.image = index.image
                    obj.price = index.price
                    obj.quantity = index.quantity*/
                    
                    tempComputerArray.append(index)
                }
            }
            
        }
        self.myTableView!.reloadData()
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
 
