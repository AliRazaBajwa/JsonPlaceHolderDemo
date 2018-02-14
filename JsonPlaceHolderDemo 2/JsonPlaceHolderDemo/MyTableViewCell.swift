//
//  MyTableViewCell.swift
//  JsonPlaceHolderDemo
//
//  Created by Ali Bajwa on 18/07/2017.
//  Copyright © 2017 SSASoft. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var title: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
