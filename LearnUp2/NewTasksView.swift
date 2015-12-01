//
//  NewTasksView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class NewTasksView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var newTaskArray = [String]()
    
    @IBOutlet weak var newTasksTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "NewTaskCell", bundle: nil)
        newTasksTable.registerNib(nib, forCellReuseIdentifier: "newTaskCell")
        populateNewTasks()
    }
    
    func populateNewTasks(){
        newTaskArray.append("Multiplication bonanza")
        newTaskArray.append("Measuring driving speed")
        newTaskArray.append("Write a story")
        newTaskArray.append("Solve P=NP")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:NewTaskCell = newTasksTable.dequeueReusableCellWithIdentifier("newTaskCell", forIndexPath: indexPath) as! NewTaskCell
        cell.taskTitle.text = newTaskArray[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newTaskArray.count
    }
    
}