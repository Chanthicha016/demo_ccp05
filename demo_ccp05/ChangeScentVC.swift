//
//  ChangeScentVC.swift
//  demo_ccp05
//
//  Created by FaiFai on 2/17/2559 BE.
//  Copyright © 2559 FaiFai. All rights reserved.
//

import UIKit
import Eureka
import CoreLocation

class ChangeScentVC: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        URLRow.defaultCellUpdate = { cell, row in cell.textField.textColor = .blueColor() }
        LabelRow.defaultCellUpdate = { cell, row in cell.detailTextLabel?.textColor = .orangeColor()  }
        CheckRow.defaultCellSetup = { cell, row in cell.tintColor = .orangeColor() }
        DateRow.defaultRowInitializer = { row in row.minimumDate = NSDate() }
        
        form =
            
            Section()
            
            +++ Section("Change Scent")
            
            <<< ActionSheetRow<String>() {
                $0.title = "Scent Name"
                $0.selectorTitle = "Scent Name"
                $0.options = ["Peppermint", "Lemon", "Melaleuca"]
                $0.value = "Peppermint"
            }
            <<< ActionSheetRow<String>() {
                $0.title = "Intensity"
                $0.selectorTitle = "Intensity"
                $0.options = ["Heavy", "Medium", "Light"]
                $0.value = "Heavy"
        }
    }
    
    func multipleSelectorDone(item:UIBarButtonItem) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
