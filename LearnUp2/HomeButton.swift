//
//  HomeButton.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/19/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//
import UIKit

class HomeButton: UIButton {

    override func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?) {
        self.layer.hidden = true;
    }    
    
}