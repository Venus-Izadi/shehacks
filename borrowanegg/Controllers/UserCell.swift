//
//  UserCell.swift
//  borrowanegg
//
//  Created by Alexandra Luca on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation
import UIKit

class UserCell: UITableViewCell{
    var icon:UIImageView!
    var label:UILabel!
    var isBorrow:Bool!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //Initialize Text Field
        self.label = UILabel(frame: CGRect(x: 60.00, y: 0, width: 216.00, height: 80));
        self.label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        self.label.numberOfLines = 2
        self.label.textColor = UIColor(red: 0, green: 64/255, blue: 77/255, alpha: 1)
        let image = UIImage(named:"egg")
        self.icon = UIImageView(frame: CGRect(x: 15, y: 20, width: 30, height: 30))
        self.icon.image = image
        //Add TextField to SubView
        self.addSubview(icon)
        self.addSubview(label)
        self.isBorrow = false
    }
    




    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}