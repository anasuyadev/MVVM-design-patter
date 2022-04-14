//
//  DesignTableViewCell.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 08/04/22.
//

import UIKit

class DesignTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
