//
//  ThankYou.swift
//  borrowanegg
//
//  Created by Svetlana Filimonova on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation
import UIKit

class ThankYou: UIViewController {
    
    var isBorrow: Bool = true
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        var imageName = ""
        if (isBorrow){
            imageName = "thanks1"
        } else {
            imageName = "thanks2"
        }
        
        let image = UIImage(named:imageName)
        var imageView = UIImageView(frame: CGRectMake(0, 100, self.view.frame.width, 300))
        imageView.image = image
        self.view.addSubview(imageView)

        self.view.backgroundColor = UIColor(red: 0, green: 150/255, blue: 136/255, alpha: 1)
        
        // create tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: "tapGesture:")
        
        // add it to the image view;
        imageView.addGestureRecognizer(tapGesture)
        // make sure imageView can be interacted with by user
        imageView.userInteractionEnabled = true
    }
    
    func tapGesture(gesture: UIGestureRecognizer) {
        if let imageView = gesture.view as? UIImageView {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    func borrow(sender :UIButton){
       self.dismissViewControllerAnimated(true, completion: nil)
    }
}
