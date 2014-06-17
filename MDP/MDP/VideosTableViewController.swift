//
//  VideosTableViewController.swift
//  MDP
//
//  Created by Daren David Taylor on 16/06/2014.
//  Copyright (c) 2014 DDT. All rights reserved.
//

import UIKit
import MediaPlayer

class VideosTableViewController: UITableViewController , VideoTableViewCellDelegate{
  
  var videoArray : NSArray! {
  get {
    return ["0BjiGAtxeO4", "smypzRF-W6M", "exxJANsGzzk", "yqYOcjB88Ag"]
  }
  }
  
  override func numberOfSectionsInTableView(tableView: UITableView?) -> Int
  {
    return 1
  }
  
  override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int
  {
    return videoArray.count
  }
  
  override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell?
  {
    let cell = tableView?.dequeueReusableCellWithIdentifier("VideoCellIdentifierIPad") as VideoTableViewCell
    
    let row = indexPath?.row
    
    if let identifier: NSString = videoArray[row!] as? NSString {
    
    cell.path = "http://www.youtube.com/embed/" + identifier
      
      cell.delegate = self
    }
    return cell
  }
  
  func playVideoTapped(sender: AnyObject)
  {
    if let cell = sender as? VideoTableViewCell {
      
      
      playVideo(cell.path!)
      
    }
  }
  
  var streamPlayer: MPMoviePlayerController!
  
  func playVideo(path: NSString)
  {
    
    
    
    let url = NSURL(string: "http://www.thumbafon.com/code_examples/video/segment_example/prog_index.m3u8");
    
    streamPlayer = MPMoviePlayerController(contentURL: url)
    
  //  streamPlayer.controlStyle = MPMovieControlStyle.Fullscreen
    
    streamPlayer.view.frame = CGRectMake(0,0,500,500);
    
    println(streamPlayer.view.frame)
    
    streamPlayer.setFullscreen(true, animated: true)
    
    self.view.addSubview(streamPlayer.view)
    
    streamPlayer.play()
  }
  
}
