//
//  MapViewController.swift
//  learnSwift
//
//  Created by Alexandra Luca on 10/04/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import UIKit
import MapKit

class GiveAwayViewController: UIViewController,UITextFieldDelegate {
    
    
     var imageText: UIImageView!
    var textInput : UITextField!
    var button:UIButton!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
        let image = UIImage(named:"status")
        var imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width, 120))
        imageView.image = image
        self.view.addSubview(imageView)
    
        imageText = UIImageView(frame: CGRectMake(0, 0, 200, 60))
        imageText.image = UIImage(named:"givetext")
        imageText.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-100)
        
        textInput = UITextField(frame: CGRectMake(0, 0, 200, 21))
        textInput.center = CGPointMake(160, 320)
        textInput.textAlignment = NSTextAlignment.Center
        textInput.placeholder = "Type the ingredient and quantity"
       
        textInput.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-30)
        textInput.delegate = self
        button   = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.frame = CGRectMake(100, 100, 200, 50)
        button.center = CGPointMake(160, 400)
    
        button.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY+50)
        let borrow = UIImage(named: "giveaway")     //   button.backgroundColor =
        button.setImage(borrow, forState: UIControlState.Normal)
         button.addTarget(self, action: "borrow:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        self.view.addSubview(imageText!)
        self.view.addSubview(textInput!)
        self.view.addSubview(button)
        
    }
    
    func borrow(sender :UIButton){
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "Done!";
        alertView.message = "Let's see who needs it";
        alertView.show();
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        self.view.endEditing(true);
        return true;
    }
}
