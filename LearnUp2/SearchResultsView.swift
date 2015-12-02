//
//  SearchResultsView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 12/1/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class SearchResultsView: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    
    var searchedTaskArray = [String]()
    
    @IBOutlet weak var searchedTaskTable: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "SearchTaskCell", bundle: nil)
        searchedTaskTable.registerNib(nib, forCellReuseIdentifier: "searchTaskCell")
        populateSearchedTasks()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        searchBar.delegate = self
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
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedTaskArray.count
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        //do search query
        view.endEditing(true)
    }
    
    
}