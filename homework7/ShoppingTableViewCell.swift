//
//  ShoppingTableViewCell.swift
//  homework7
//
//  Created by user on 06.07.17.
//  Copyright © 2017 fijirald. All rights reserved.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    @IBOutlet weak var shoppingTaskLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureAnotherCellWith(name: String)
    {
        if name.characters.count > 60
        {
            shoppingTaskLabel.text = "Too long task"
            
        } else {
            shoppingTaskLabel.text = name
        }
    }

    
}
