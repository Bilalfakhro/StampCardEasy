//
//  HeaderCell.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-27.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    
    func setupCell(labelText: String) {
    headerLabel.text = labelText
    }
}
