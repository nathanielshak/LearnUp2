//
//  SearchView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 12/1/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class SearchView: UIViewController, UINavigationControllerDelegate, UISearchBarDelegate {
    

    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        searchBar.delegate = self
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        let searchResults = self.storyboard?.instantiateViewControllerWithIdentifier("searchResults") as! SearchResultsView
        //populate array of searchResults
        self.navigationController?.pushViewController(searchResults, animated: true)
    }
    
}