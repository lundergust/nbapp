//
//  boxTableViewCell.swift
//  test2
//
//  Created by lundergust on 10/27/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class headerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerH: UILabel!
    @IBOutlet weak var minH: UILabel!
    @IBOutlet weak var fgH: UILabel!
    @IBOutlet weak var tpH: UILabel!
    @IBOutlet weak var ptsH: UILabel!
    @IBOutlet weak var rebH: UILabel!
    @IBOutlet weak var astH: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
