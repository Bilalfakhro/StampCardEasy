//
//  itemTableViewCell.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-29.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class itemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
