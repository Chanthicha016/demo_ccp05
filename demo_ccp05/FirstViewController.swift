//
//  FirstViewController.swift
//  demo_ccp05
//
//  Created by FaiFai on 2/16/2559 BE.
//  Copyright © 2559 FaiFai. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    
//    @IBOutlet weak var change1: UIButton!
//    @IBOutlet weak var change2: UIButton!
//    
//    @IBAction func change1(sender: AnyObject) {
//        
//        self.presentLeftMenuViewController()
//    }
//    
//    @IBAction func change2(sender: AnyObject) {
//        
//        self.presentRightMenuViewController()
//        
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
//        title = "Home"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .Plain, target: self, action: "presentLeftMenuViewController")
        
    
    }
    @IBAction func Menu(sender: UIButton) {
        
        self.presentLeftMenuViewController()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
