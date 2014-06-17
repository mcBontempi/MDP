//
//  VideoTableViewCell.swift
//  MDP
//
//  Created by Daren taylor on 16/06/2014.
//  Copyright (c) 2014 DDT. All rights reserved.
//

import UIKit

@objc protocol VideoTableViewCellDelegate {
  func playVideoTapped(sender: AnyObject)
}

class VideoTableViewCell: UITableViewCell {
  
  var delegate: VideoTableViewCellDelegate!
  
  var path: NSString? {
  didSet {
    webView.loadRequest(NSURLRequest(URL: NSURL(string: path)));
  }
  }
  
  @IBOutlet var webView : UIWebView
  
  @IBAction func playVideoTapped(sender : AnyObject) {
    
    delegate?.playVideoTapped(self)
  }
}
