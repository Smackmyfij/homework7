//
//  TodoTableViewCell.swift
//  homework7
//
//  Created by user on 04.07.17.
//  Copyright © 2017 fijirald. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var toDoTaskLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected
        {
            toDoTaskLabel.text = "Done!"
        }
        
        if toDoTaskLabel.text == "Done!"
        {
            self.backgroundColor = UIColor.green

        }
        
        
        // Configure the view for the selected state
    }
    
    func configureCellWith(name: String)
    {
        if name.characters.count > 60
        {
            toDoTaskLabel.text = "Too long task"
            
        } else {
            toDoTaskLabel.text = name
            
        }
    }
    
}
