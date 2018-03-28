//
//  customCell.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-18.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {

    
    @IBOutlet weak var cartImage: UIImageView!
    
    
    @IBOutlet weak var cartName: UILabel!
    
    
    @IBOutlet weak var cartPrice: UILabel!
    
    
    @IBOutlet weak var cartModel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
