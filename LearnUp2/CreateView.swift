//
//  CreateView.swift
//  LearnUp2
//
//  Created by Nathaniel Shak on 11/30/15.
//  Copyright © 2015 Nathaniel Shak. All rights reserved.
//

import UIKit

class CreateView: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var retakeButton: UIButton!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var cameraRollButton: UIButton!
    
    let imagePicker = UIImagePickerController()
    
    @IBAction func createAction(sender: AnyObject) {
        
    }
    
    @IBAction func cameraAction(sender: AnyObject) {
        takePicture(true)
    }
    
    @IBAction func retakeAction(sender: AnyObject) {
        pictureView.hidden = true
        cameraRollButton.hidden = false
        cameraButton.hidden = false
    }
    
    @IBAction func cameraRollAction(sender: AnyObject) {
        takePicture(false)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureView.hidden = true
        retakeButton.hidden = true
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        titleField.delegate = self
    }
    
    func takePicture(capture: Bool){
        if UIImagePickerController.isCameraDeviceAvailable(UIImagePickerControllerCameraDevice.Front){
            imagePicker.delegate = self
            if capture{
                imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            }
            else{
                imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            }
            presentViewController(imagePicker, animated: true, completion: nil)
        } else{
            print("no front camera available")
        }
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
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        dismissViewControllerAnimated(true, completion: nil)
        pictureView.image = image
        pictureView.hidden = false
        cameraButton.hidden = true
        cameraRollButton.hidden = true
        retakeButton.hidden = false
    }
    
}