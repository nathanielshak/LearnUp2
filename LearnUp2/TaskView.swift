//
//  TaskView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/19/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class TaskView: UIViewController {
    
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var coinSquare: UIView!
    @IBOutlet weak var descriptionText: UITextView!
    var descriptionString: String!
    var titleString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coinSquare.layer.cornerRadius  = 10;
        print(titleString)
        print(descriptionString)
        self.taskTitle.text = titleString
        self.descriptionText.text = descriptionString
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
