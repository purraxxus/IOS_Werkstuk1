//
//  viewControllerTableViewCell.swift
//  Werkstuk1
//
//  Created by student on 13/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class viewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet var cell: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var labelVoorNaam: UILabel!
    @IBOutlet weak var labelNaam: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
