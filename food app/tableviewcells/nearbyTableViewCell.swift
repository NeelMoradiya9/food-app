//
//  nearbyTableViewCell.swift
//  food app
//
//  Created by Neel  on 06/12/23.
//

import UIKit

class nearbyTableViewCell: UITableViewCell {

    @IBOutlet weak var namelabels: UILabel!
    @IBOutlet weak var ratinglabel: UILabel!
    
    @IBOutlet weak var imagev: UIImageView!
    @IBOutlet weak var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
