//
//  MyAssignedView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class MyAssignedView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct AssignedTask {
        var name: String
        var task: String
        var date: String
    }
    
    var assignedTaskArray = [AssignedTask]()

    @IBOutlet weak var assignedTasksTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MyAssignedCell", bundle: nil)
        assignedTasksTable.registerNib(nib, forCellReuseIdentifier: "assignedCell")
        populateAssignedTasks()
    }
    
    func populateAssignedTasks(){
        let task1 = AssignedTask(name: "All", task: "Count to 27 Cents", date: "11/3/15")
        let task2 = AssignedTask(name: "Jimmy", task: "Making Sentences", date: "11/4/15")
        let task3 = AssignedTask(name: "All", task: "Solve P=NP", date: "11/5/15")
        assignedTaskArray.append(task3)
        assignedTaskArray.append(task2)
        assignedTaskArray.append(task1)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:AssignedTaskCell = assignedTasksTable.dequeueReusableCellWithIdentifier("assignedCell", forIndexPath: indexPath) as! AssignedTaskCell
        let currentTask = assignedTaskArray[indexPath.row]
        cell.nameLabel.text = currentTask.name
        cell.titleLabel.text = currentTask.task
        cell.dateLabel.text = currentTask.date
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignedTaskArray.count
    }
    
}