//
//  boxTableViewCell.swift
//  test2
//
//  Created by lundergust on 10/27/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class boxTableViewCell: UITableViewCell {

    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var ptsLabel: UILabel!
    
    @IBOutlet weak var astLabel: UILabel!
    @IBOutlet weak var rebLabel: UILabel!
    @IBOutlet weak var tpLabel: UILabel!
    @IBOutlet weak var fgLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
