//
//  FirstViewController.swift
//  demo_ccp05
//
//  Created by FaiFai on 2/16/2559 BE.
//  Copyright © 2559 FaiFai. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var gotoleft: UIButton!
    
    @IBOutlet weak var gotoright: UIButton!
    
    @IBAction func gotoleft(sender: AnyObject) {
        
        self.performSegueWithIdentifier("gotoleft", sender: self)
    }
    
    @IBAction func gotoright(sender: AnyObject) {
        self.performSegueWithIdentifier("gotoright", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//        self.title = "HOME"
//        
//        let navigationBar = navigationController!.navigationBar
//        navigationBar.tintColor = UIColor.blueColor()
//        
//        let leftButton =  UIBarButtonItem(title: "Left Button", style: UIBarButtonItemStyle.Plain, target: self, action: "presentLeftMenuViewController")
//        let rightButton = UIBarButtonItem(title: "Right Button", style: UIBarButtonItemStyle.Plain, target: self, action: "presentRightMenuViewController")
//        
//        navigationItem.leftBarButtonItem = leftButton
//        navigationItem.rightBarButtonItem = rightButton
        
        
//        view.backgroundColor = UIColor.whiteColor()
//        title = "Home"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .Plain, target: self, action: "presentLeftMenuViewController")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Right", style: .Plain, target: self, action: "presentRightMenuViewController")
//    }
    
//    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.navigationBarHidden = true
//    }
//    
//    override func viewWillDisappear(animated: Bool)
//    {
//        super.viewWillDisappear(animated)
//        self.navigationController?.navigationBarHidden = false
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
