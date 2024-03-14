//
//  saveTableViewCell.swift
//  food app
//
//  Created by Neel  on 05/01/24.
//

import UIKit

class saveTableViewCell: UITableViewCell {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imagev: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        view1.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
