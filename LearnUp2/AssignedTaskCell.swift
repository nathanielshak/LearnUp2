//
//  AssignedTaskCell.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class AssignedTaskCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
