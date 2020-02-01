//
//  popUpViewController.swift
//  test2
//
//  Created by lundergust on 10/27/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class popUpViewController: UIViewController {

    @IBAction func closePopUp(_ sender: Any) {
    self.removeAnimate()
    }

    
    func showAnimate() {
        self.view.transform = CGAffineTransform(scaleX: 1.3,y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y:1.0)
        });
    }
    
    func removeAnimate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3,y:1.3)
            self.view.alpha = 0.0;
        }, completion: {(finished: Bool ) in
            if (finished)
            {self.view.removeFromSuperview()}
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
