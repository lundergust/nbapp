//
//  TodayViewController.swift
//  nbaScores_Widget
//
//  Created by Joseph M Leaman on 2/11/19.
//  Copyright © 2019 Joseph M Leaman. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var widget_text: UITextView!
    

    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
