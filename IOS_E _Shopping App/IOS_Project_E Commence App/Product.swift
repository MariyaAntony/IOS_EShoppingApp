//
//  Device.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import Foundation

public class Product
{
    var name : String
    var price : String
    var quantity : Int
    var image : String
    var productType : String
    var description : String
    var model : String
    init()
    {
        name = ""
        price = ""
        quantity = 0
        image = ""
        productType = ""
        description = ""
        model = ""
        
    }
    
    func productList()-> [Product]
    {
        var productArray = [Product]()
        
        var productObj1 = Product()
        
        productObj1.name = "iPhone 5s"
        productObj1.price = "Price: $219.99"
        productObj1.quantity = 5
        productObj1.image = "iPhone 5s"
        productObj1.productType = "Phone"
        productObj1.description = "The iPhone 5S (marketed with a stylized lowercase 's' as iPhone 5s) is a smartphone designed and marketed by Apple Inc. Part of the iPhone series, the device was unveiled on September 10, 2013, at Apple's Cupertino headquarters. It was released on September 20, 2013, along with its lower-cost counterpart."
        productObj1.model = "Model: "
        
        productArray.append(productObj1)
        
        var productObj2 = Product()
        
        productObj2.name = "iPhone SE"
        productObj2.price = "Price: $579.00"
        productObj2.quantity = 7
        productObj2.image = "iPhone SE"
        productObj2.productType = "Phone"
        productObj2.description = "The iPhone SE (iPhone Special Edition[3]) is a smartphone designed and marketed by Apple Inc. as part of the iPhone series of devices. It was unveiled on March 21, 2016, at Apple's Cupertino headquarters and was released on March 31, 2016. The iPhone SE serves as a successor of the iPhone 5S: it maintains a 4-inch screen size and largely identical design to the 5S, but includes selected hardware upgrades from the larger iPhone 6S model, including its updated processor, rear camera, and support for iOS 9 software feat."
        productObj2.model = "Model: "
        
        productArray.append(productObj2)
        
        var productObj3 = Product()
        
        productObj3.name = "iPhone 7 Plus"
        productObj3.price = "Price: $769"
        productObj3.quantity = 3
        productObj3.image = "iPhone 7 Plus"
        productObj3.productType = "Phone"
        productObj3.description = "iPhone 7 Plus appartiene alla decima generazione di smartphone sviluppati dalla casa californiana Apple, ed è stato presentato il 7 settembre 2016 insieme al fratello minore iPhone 7.Esso è disponibile nei colori argento, oro, oro rosa e nelle nuove due colorazioni, nero opaco e Jet Black (quest'ultimo disponibile sono dei tagli da 128GB e 256GB)."
        productObj3.model = "Model: "
        
        productArray.append(productObj3)
        
        var productObj4 = Product()
        
        productObj4.name = "MacBook Pro"
        productObj4.price = "Price: $1,199.99 "
        productObj4.quantity = 6
        productObj4.image = "MacBook Pro"
        productObj4.productType = "Computer"
        productObj4.description = "The MacBook Pro (sometimes abbreviated MBP)[1] is a line of Macintosh portable computers introduced in January 2006 by Apple Inc. Replacing the PowerBook G4, the MacBook Pro was the second model to be announced during the Apple–Intel transition, after the iMac. It is the high-end model of the MacBook family and is currently available in 13- and 15-inch screen sizes. A 17-inch version was available between April 2006 and June 2012."
        productObj4.model = "Model: "
        
        productArray.append(productObj4)
        
        var productObj5 = Product()
        
        productObj5.name = "MacBook Air"
        productObj5.price = "Price: $1,449.99"
        productObj5.quantity = 2
        productObj5.image = "MacBook Air"
        productObj5.productType = "Computer"
        productObj5.description = "The MacBook Air is a line of Macintosh subnotebook computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure. The Air is available with a screen size of (measured diagonally) 13.3in (29.46 cm), with different specifications produced by Apple, and as of 2011, all models use solid-state drive storage and Intel Core i5 or i7 CPUs.[2] A MacBook Air with an 11.6in (23.78 cm) screen was made available in 2010 and was discontinued on October 27, 2016."
        productObj5.model = "Model:"
        
        productArray.append(productObj5)
        
     /*   var productObj6 = Product()
        
        productObj6.name = "iPhone 5s"
        productObj6.price = "$219.99"
        productObj6.quantity = 5
        productObj6.image = "iPhone 5s"
        productObj6.productType = "Phone"
        productObj6.description = "The iPhone 5S (marketed with a stylized lowercase 's' as iPhone 5s) is a smartphone designed and marketed by Apple Inc. Part of the iPhone series, the device was unveiled on September 10, 2013, at Apple's Cupertino headquarters. It was released on September 20, 2013, along with its lower-cost counterpart."
        
        productArray.append(productObj6)
        
        var productObj7 = Product()
        
        productObj7.name = "iPhone 5s"
        productObj7.price = "$219.99"
        productObj7.quantity = 5
        productObj7.image = "iPhone 5s"
        productObj7.productType = "Phone"
        productObj7.description = "The iPhone 5S (marketed with a stylized lowercase 's' as iPhone 5s) is a smartphone designed and marketed by Apple Inc. Part of the iPhone series, the device was unveiled on September 10, 2013, at Apple's Cupertino headquarters. It was released on September 20, 2013, along with its lower-cost counterpart."
        
        productArray.append(productObj7)
        
        var productObj8 = Product()
        
        productObj8.name = "iPhone 5s"
        productObj8.price = "$219.99"
        productObj8.quantity = 5
        productObj8.image = "iPhone 5s"
        productObj8.productType = "Phone"
        productObj8.description = "The iPhone 5S (marketed with a stylized lowercase 's' as iPhone 5s) is a smartphone designed and marketed by Apple Inc. Part of the iPhone series, the device was unveiled on September 10, 2013, at Apple's Cupertino headquarters. It was released on September 20, 2013, along with its lower-cost counterpart."
        
        productArray.append(productObj8)
        
        var productObj9 = Product()
        
        productObj9.name = "iPhone 5s"
        productObj9.price = "$219.99"
        productObj9.quantity = 5
        productObj9.image = "iPhone 5s"
        productObj9.productType = "Phone"
        productObj9.description = "The iPhone 5S (marketed with a stylized lowercase 's' as iPhone 5s) is a smartphone designed and marketed by Apple Inc. Part of the iPhone series, the device was unveiled on September 10, 2013, at Apple's Cupertino headquarters. It was released on September 20, 2013, along with its lower-cost counterpart."
        
        productArray.append(productObj9)
        
        var productObj10 = Product()
        
        productObj10.name = "iPhone 5s"
        productObj10.price = "$219.99"
        productObj10.quantity = 5
        productObj10.image = "iPhone 5s"
        productObj10.productType = "Phone"
        productObj10.description = "The iPhone 5S (marketed with a stylized lowercase 's' as iPhone 5s) is a smartphone designed and marketed by Apple Inc. Part of the iPhone series, the device was unveiled on September 10, 2013, at Apple's Cupertino headquarters. It was released on September 20, 2013, along with its lower-cost counterpart."
        
        productArray.append(productObj10)
*/
        
        return productArray

    }
}
