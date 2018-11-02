//
//  PeopleTableViewCell.swift
//  DemoXCUITest
//
//  Created by Phineas.Huang on 2018/11/2.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var titleEmail: UILabel!
    @IBOutlet weak var titleNick: UILabel!
    @IBOutlet weak var titleMobile: UILabel!
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelNick: UILabel!
    @IBOutlet weak var labelMobile: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
