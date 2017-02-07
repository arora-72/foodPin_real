//
//  sharinganTableViewCell.swift
//  foodPin_real
//
//  Created by INDRESH ARORA on 06/02/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class sharinganTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel1:UILabel!  //name label
    @IBOutlet var locationLabel1: UILabel!   // location label
    @IBOutlet var typeLabel1: UILabel!  // type label
    @IBOutlet var thumbnailImageView1: UIImageView! //thumbnail image view

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
