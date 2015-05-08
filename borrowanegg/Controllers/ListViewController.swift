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
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
//        self.tableView.registerNib(UINib(nibName: "PlayerCell", bundle: nil), forCellReuseIdentifier: "PlayerCell")
        
        
        self.title = "My List"
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
//        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell") as! PlayerCell
//        
//        
//        let album = albums[indexPath.row] as Album
//        cell.title.text = album.title
//        cell.userId.text = String(album.userId)
//        // cell.ratingImageView.image = imageForRating(player.rating)
//        return cell
        return UITableViewCell()
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

