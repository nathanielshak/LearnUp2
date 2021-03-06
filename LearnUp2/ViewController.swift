//
//  ViewController.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/18/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

