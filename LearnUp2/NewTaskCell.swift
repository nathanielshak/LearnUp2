//
//  NewTaskCell.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class NewTaskCell: UITableViewCell {
    
    
    @IBOutlet weak var taskTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
