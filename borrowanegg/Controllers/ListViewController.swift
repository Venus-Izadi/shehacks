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
    
     var list: [String] = ["Alexandra would like to give away some pasta",
                           "Venus needs 1 tomato",
                           "James needs a cap of flour",
                           "Svetlana would like to give away 3 apples",
                           "Mary would like to give away 3 eggs"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        
        self.title = "Groups"
        let image = UIImage(named:"status")
        var imageView = UIImageView(frame: CGRectMake(0, 20, self.view.frame.width, 120))
        imageView.image = image
        
        let statusBarImage = UIImage(named:"statusbar")
        var statusBarimageView = UIImageView(frame: CGRectMake(0, 140, self.view.frame.width, 120))
        statusBarimageView.image = statusBarImage
        
        self.tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, 260))
        self.tableView.tableHeaderView?.addSubview(imageView)
        self.tableView.tableHeaderView?.addSubview(statusBarimageView)
        
        self.tableView.contentInset = UIEdgeInsetsMake(-40, 0, 0, 0);

        tableView.registerClass(UserCell.classForCoder(), forCellReuseIdentifier: "cell")
  
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
 
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
      return 80
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{

            let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UserCell
            cell.label.text = list[indexPath.row]
            cell.isBorrow = true
            return cell

    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let acceptController = AcceptViewController()
        acceptController.cell = tableView.cellForRowAtIndexPath(indexPath) as! UserCell
        self.navigationController!.pushViewController(acceptController, animated:true)
    }
    
}

