//
//  teacherHome.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class TeacherHome: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var activityFeedArray = [String]()
    
    @IBOutlet weak var activityFeedTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ActivityFeedCell", bundle: nil)
        activityFeedTable.registerNib(nib, forCellReuseIdentifier: "activityCell")
        populateActivityFeed()
        
    }
    
    func populateActivityFeed(){
        activityFeedArray.append("Jenny reached 50 points!")
        activityFeedArray.append("Nathaniel solved P=NP!")
        activityFeedArray.append("Karan reached 30 points!")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:ActivityTableViewCell = activityFeedTable.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath) as! ActivityTableViewCell
        cell.cellText.text = activityFeedArray[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return activityFeedArray.count
    }
    
}