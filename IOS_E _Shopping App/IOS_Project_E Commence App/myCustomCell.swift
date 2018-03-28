//
//  myCustomCell.swift
//  IOS_Project_E Commence App
//
//  Created by MARIYA ANTONY on 2017-03-17.
//  Copyright © 2017 MARIYA ANTONY. All rights reserved.
//

import UIKit

class myCustomCell: UITableViewCell {

    
    @IBOutlet weak var deviceImage: UIImageView!
    
    @IBOutlet weak var deviceName: UILabel!
    
    @IBOutlet weak var devicePrice: UILabel!
    
    @IBOutlet weak var deviceQuantity: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
