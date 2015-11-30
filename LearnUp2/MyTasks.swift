//
//  MyTasks.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/19/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//


import UIKit

class MyTasks: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showTask"{
            if let destinationVC = segue.destinationViewController as? TaskView{
                destinationVC.titleString = "Counting Coins!"
                destinationVC.descriptionString = "Activity: Find as many ways as you can to arrange coins into stacks of 27 cents. \r\nCompletion: Take a picture of these and submit it!"
            }
        }
    }
}
