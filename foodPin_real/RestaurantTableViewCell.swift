//
//  RestaurantTableViewCell.swift
//  foodPin_real
//
//  Created by INDRESH ARORA on 04/02/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet var nameLabel:UILabel!  //name label
    @IBOutlet var locationLabel: UILabel!   // location label
    @IBOutlet var typeLabel: UILabel!  // type label
    @IBOutlet var thumbnailImageView: UIImageView! //thumbnail image view
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
