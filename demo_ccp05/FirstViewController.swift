//
//  FirstViewController.swift
//  demo_ccp05
//
//  Created by FaiFai on 2/16/2559 BE.
//  Copyright © 2559 FaiFai. All rights reserved.
//

import UIKit
import Pulsar

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        timeInterval = userStartTime
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    //tableview
    @IBOutlet weak var mainTable: UITableView!
    var dataSource:NSMutableArray = NSMutableArray()
    var textArray = ["Papermint","Lemon","Cocoa"]
    var textLevel = ["Heavy","Light","Medium"]

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    @IBOutlet weak var StartStopbnt: CircleButton!
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomerCell
        
        cell.Mname.text = textArray[indexPath.row]
        cell.Mlevel.text = textLevel[indexPath.row]
        
        return cell
    }
    
    
    //timer
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var startTime = NSTimeInterval()
    var saveElapsedTime = NSTimeInterval()
    var timer = NSTimer()
    var userStartTime = 1500.0
    var timeInterval = Double()
    var timerStopped = true
    
    
    func formatTime(elapsedTime: Double){
        let minutes = Int(elapsedTime / 60.0)
        let seconds = Int(elapsedTime % 60)
        let fraction = Int((elapsedTime - floor(elapsedTime)) * 60)
        let strMinutes = minutes > 9 ? String(minutes):"0" + String(minutes)
        let strSeconds = seconds > 9 ? String(seconds):"0" + String(seconds)
        let strFraction = fraction > 9 ? String(fraction):"0" + String(fraction)
        timerLabel.text = "\(strMinutes):\(strSeconds):\(strFraction)"
    }
    
    func updateTime() {
        let currentTime = NSDate.timeIntervalSinceReferenceDate()
        let elapsedTime: NSTimeInterval = startTime - currentTime
        saveElapsedTime = elapsedTime
        formatTime(elapsedTime)
    }
    
    @IBAction func StartStopAction(sender: AnyObject) {
        if !timer.valid && timerStopped{
            timerStopped = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate() + timeInterval
        }
        else if timer.valid && !timerStopped{
            timer.invalidate()
            timeInterval = Double(saveElapsedTime)
            timerStopped = true
        }
    }
    @IBAction func didTriggerActionOnCircleButton(sender: CircleButton) {
        sender.layer.addPulse { builder in
            builder.borderColors = [
                UIColor(hue: CGFloat(rand()) / CGFloat(RAND_MAX), saturation: 1.0, brightness: 1.0, alpha: 1.0).CGColor
            ]
            builder.backgroundColors = colorsWithHalfOpacity(builder.borderColors)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

func colorsWithHalfOpacity(colors: [CGColor]) -> [CGColor] {
    return colors.map({ CGColorCreateCopyWithAlpha($0, CGColorGetAlpha($0) * 0.5)! })
}
