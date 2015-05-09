//
//  AcceptViewController.swift
//  borrowanegg
//
//  Created by Svetlana Filimonova on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation
import UIKit

class AcceptViewController: UIViewController {
    
    var label: UILabel!
    var textInput : UITextField!
    var button:UIButton!
    var cell: UserCell!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
                
        if(cell.isBorrow!) {
            self.title = "Can I borrow?"
        } else {
            self.title = "Would you like?"
        }
        
        label = UILabel(frame: CGRectMake(0, 0, self.view.frame.width, 90))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.numberOfLines = 2
        label.text = cell.label.text!
        

        
        // This is the default setting but be explicit anyway...
        label.setTranslatesAutoresizingMaskIntoConstraints(true)
        
        label.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin |
            UIViewAutoresizing.FlexibleRightMargin |
            UIViewAutoresizing.FlexibleTopMargin |
            UIViewAutoresizing.FlexibleBottomMargin
        label.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-100)
        
        button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.frame = CGRectMake(100, 100, 200, 50)
        //  button.setTitle("Borrow", forState: UIControlState.Normal)
        button.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY+50)
        var imageName = "barrow"
        if (cell.isBorrow!) {
            imageName = "barrow"
        } else {
            imageName = "giveaway"
        }
        let borrow = UIImage(named: imageName)     //   button.backgroundColor = UIColor.whiteColor()
        button.setImage(borrow, forState: UIControlState.Normal)
        button.addTarget(self, action: "borrow:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        // button.titleLabel! = UILabel()
        
        
        self.view.addSubview(label!)
        self.view.addSubview(button!)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = false
    }
    
    func borrow(sender :UIButton){
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "Done!";
        alertView.message = "Let's connect you together!";
        alertView.show();
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
}
