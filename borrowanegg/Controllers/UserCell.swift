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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //Initialize Text Field
        self.label = UILabel(frame: CGRect(x: 60.00, y: 9, width: 216.00, height: 31.00));
        let image = UIImage(named:"egg")
        self.icon = UIImageView(frame: CGRect(x: 15, y: 10, width: 30, height: 30))
        self.icon.image = image
        //Add TextField to SubView
        self.addSubview(icon)
        self.addSubview(label)
    }
    




    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}