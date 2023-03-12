//
//  HomepageTVC2.swift
//  SnapShare
//
//  Created by Jo on 28/12/22.
//

import UIKit

class HomepageTVC2: UITableViewCell {
    
    
    @IBOutlet var btnlike: UIButton!
    @IBOutlet var imglike: UIImageView!
    
    @IBOutlet var lbllikecount: UILabel!
    @IBOutlet var imgpostUserProfie: BaseImageView!
    @IBOutlet var imgpostUser: BaseImageView!
    @IBOutlet var lblUsername: UILabel!
    
    @IBOutlet var btncmt: UIButton!
    @IBOutlet var btndidselect: UIButton!
    @IBOutlet var lblTags: UILabel!
    @IBOutlet var lbldate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
