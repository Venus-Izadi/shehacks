//
//  BorrowViewController.swift
//  borrowanegg
//
//  Created by Alexandra Luca on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation
import UIKit

class BorrowViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {

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
        imageText.image = UIImage(named:"borrowtext")
        imageText.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-100)
        
        textInput = UITextField(frame: CGRectMake(0, 0, 200, 21))
        textInput.center = CGPointMake(160, 320)
        textInput.textAlignment = NSTextAlignment.Center
        textInput.font = UIFont(name: "systemFont", size: 30)
        textInput.placeholder = "Type the ingredient and quantity"
        textInput.delegate = self

        
 
       
       
        textInput.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-30)
        
        button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.frame = CGRectMake(100, 100, 250, 50)
    
        button.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY+50)
        let borrow = UIImage(named: "barrow")     //   button.backgroundColor = UIColor.whiteColor()
        button.setImage(borrow, forState: UIControlState.Normal)
        button.addTarget(self, action: "borrow:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
       // button.titleLabel! = UILabel()
        
        
        self.view.addSubview(imageText!)
        self.view.addSubview(textInput!)
        self.view.addSubview(button!)
        
    }
    
    func borrow(sender :UIButton){
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "Done!";
        alertView.message = "Let's see who can help you";
        alertView.show();
        textInput.text = ""
        self.tabBarController?.selectedIndex = 2
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
    self.view.endEditing(true);
        return true;
    }

    
}
