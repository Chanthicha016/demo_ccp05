//
//  FirstViewController.swift
//  demo_ccp05
//
//  Created by FaiFai on 2/16/2559 BE.
//  Copyright © 2559 FaiFai. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate{
    
    @IBOutlet weak var mainTable: UITableView!
    var dataSource:NSMutableArray = NSMutableArray()
    var textArray = ["Papermint","Lemon","Cocoa"]
    var textLevel = ["Heavy","Light","Medium"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
//        title = "Home"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .Plain, target: self, action: "presentLeftMenuViewController")
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomerCell
        
        cell.Mname.text = textArray[indexPath.row]
        cell.Mlevel.text = textLevel[indexPath.row]
        
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
