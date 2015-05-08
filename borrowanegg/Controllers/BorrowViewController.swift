//
//  BorrowViewController.swift
//  borrowanegg
//
//  Created by Alexandra Luca on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation
import UIKit

class BorrowViewController: UIViewController {
    
    var label: UILabel!
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
        label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center

        label.text = "I need";
        
        textInput = UITextField(frame: CGRectMake(0, 0, 200, 21))
        textInput.center = CGPointMake(160, 320)
        label.textAlignment = NSTextAlignment.Center
        textInput.placeholder = "Type the ingredient and quantity"
        
        button = UIButton()
       // button.titleLabel! = UILabel()
        
        
        self.view.addSubview(label!)
        self.view.addSubview(textInput!)
        self.view.addSubview(button)
        
        
    }

    
}
