//
//  SearchResultsView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 12/1/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class SearchResultsView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var searchedTaskArray = [String]()
    
    @IBOutlet weak var searchedTaskTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "SearchTaskCell", bundle: nil)
        searchedTaskTable.registerNib(nib, forCellReuseIdentifier: "searchTaskCell")
        populateSearchedTasks()
    }
    
    func populateSearchedTasks(){
        searchedTaskArray.append("Math BINGO")
        searchedTaskArray.append("Pass the Chicken")
        searchedTaskArray.append("Micrography and Martin Luther King Jr.")
        searchedTaskArray.append("My Alphabetical Autobiography")
        searchedTaskArray.append("Candy Colors: Figuring the Mean, Median, and Mode")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:SearchTaskCell = searchedTaskTable.dequeueReusableCellWithIdentifier("searchTaskCell", forIndexPath: indexPath) as! SearchTaskCell
        cell.taskTitleLabel.text = searchedTaskArray[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedTaskArray.count
    }
    
}