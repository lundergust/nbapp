//
//  TodayViewController.swift
//  Scores Widget
//
//  Created by lundergust on 3/15/19.
//  Copyright © 2019 Joseph M Leaman. All rights reserved.
//

import UIKit
import NotificationCenter
import ScoresDataKit

class TodayViewController: UIViewController, NCWidgetProviding {
    
    // MARK properties for table
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        extensionContext?.widgetLargestAvailableDisplayMode = .expanded
    }
    
    // Show more function
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        let expanded = activeDisplayMode == .expanded
        preferredContentSize = expanded ? CGSize(width: maxSize.width, height: 400) : maxSize
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
}
