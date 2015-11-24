//
//  HomeScreen.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/24/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//
import UIKit

class HomeScreen: UIViewController {
    
    //MARK: properties
    
    
    @IBOutlet weak var myTasksButton: UIView!
    @IBOutlet weak var searchButton: UIView!
    @IBOutlet weak var progressButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTasksButton.layer.cornerRadius = 10
        searchButton.layer.cornerRadius = 10
        progressButton.layer.cornerRadius = 10
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

