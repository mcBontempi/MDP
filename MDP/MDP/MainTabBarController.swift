//
//  MainTabBarController.swift
//  MDP
//
//  Created by Daren David Taylor on 16/06/2014.
//  Copyright (c) 2014 DDT. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    
    
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if segue?.destinationViewController.identifier == "videosViewControllerIdentifier" {
            
            
            if let videosViewController = segue?.destinationViewController as? VideosTableViewController {
            
                videosViewController.videoArray = videoArray
            
            }
            
            
         
            
            
        }
        
    }
    

}
