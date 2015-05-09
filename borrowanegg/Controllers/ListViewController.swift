//
//  ListViewController.swift
//  borrowanegg
//
//  Created by Alexandra Luca on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation

//
// Created by Alexandra Luca on 9/04/15.
// Copyright (c) 2015 thoughtworks. All rights reserved.
//

import UIKit



class ListViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
     var list: [String] = ["", "Milk"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let image = UIImage(named:"status")
        var imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width+10, 120))
        imageView.image = image

        self.tableView.tableHeaderView = imageView
        self.tableView.tableHeaderView!.frame = CGRectMake(0, 0, self.view.frame.width+10, 130)
        
        self.tableView.contentInset = UIEdgeInsetsMake(-40, -10, 0, 0);
        self.navigationController?.navigationBar.hidden = true
        tableView.registerClass(UserCell.classForCoder(), forCellReuseIdentifier: "cell")
  
        
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
  
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath.row == 0){
            return 120
        }
      return 60
        
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)  {
        if (indexPath.row == 0){
            cell.separatorInset = UIEdgeInsetsZero
            cell.preservesSuperviewLayoutMargins = false
            cell.layoutMargins = UIEdgeInsetsZero
            
        }
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        if (indexPath.row == 0) {
            // profile image
          
            let cell = UITableViewCell()
          
            let image = UIImage(named: "statusbar")
            cell.imageView!.image  = image
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UserCell
            cell.label.text = "Lalala"
            return cell

        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
//        let row = indexPath.row
//        let player = albums[row]
//        let playerController = PlayerController()
//        playerController.player = player
//        self.navigationController?.pushViewController(playerController, animated:true)
    }
    
}

