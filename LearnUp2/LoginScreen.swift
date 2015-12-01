//
//  LoginScreen.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//
import UIKit

class LoginScreen: UIViewController {
    
    @IBOutlet weak var studentButton: UIView!
    @IBOutlet weak var parentButton: UIView!
    @IBOutlet weak var teacherButton: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        studentButton.layer.cornerRadius = 10
        parentButton.layer.cornerRadius = 10
        teacherButton.layer.cornerRadius = 10
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}