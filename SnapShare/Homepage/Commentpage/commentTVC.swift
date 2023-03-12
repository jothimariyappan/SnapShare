//
//  commentTVC.swift
//  SnapShare
//
//  Created by Jo on 29/12/22.
//

import UIKit

class commentTVC: UITableViewCell {

    @IBOutlet var lblname: UILabel!
    @IBOutlet var btnlik: UIButton!
    @IBOutlet var imgLike: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
