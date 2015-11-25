//
//  completeTask.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/19/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class CompleteTask: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var retakeButton: UIButton!
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var greenBar: UIView!
    @IBOutlet weak var cameraButton: UIButton!
    
    let imagePicker = UIImagePickerController()
    
    @IBAction func camerButtonPress(sender: AnyObject) {
        takePicture()
            }
    
    @IBAction func retakeAction(sender: AnyObject) {
        takePicture()
    }
    
    func takePicture(){
        if UIImagePickerController.isCameraDeviceAvailable(UIImagePickerControllerCameraDevice.Front){
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            presentViewController(imagePicker, animated: true, completion: nil)
        } else{
            print("no front camera available")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        retakeButton.hidden = true
        imageDisplay.hidden = true
        doneButton.hidden = true
        greenBar.hidden = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        dismissViewControllerAnimated(true, completion: nil)
        imageDisplay.image = image
        imageDisplay.hidden = false
        cameraButton.hidden = true
        retakeButton.hidden = false
        doneButton.hidden = false
        greenBar.hidden = false
    }
    
}
