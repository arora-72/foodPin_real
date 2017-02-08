//
//  res1TableViewCell.swift
//  foodPin_real
//
//  Created by INDRESH ARORA on 07/02/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class res1TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet var nameLabel2:UILabel!  //name label
    @IBOutlet var locationLabel2: UILabel!   // location label
    @IBOutlet var typeLabel2: UILabel!  // type label
    @IBOutlet var thumbnailImageView2: UIImageView! //thumbnail image view


}
