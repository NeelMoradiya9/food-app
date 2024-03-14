//
//  recommendedTableViewCell.swift
//  food app
//
//  Created by Neel  on 09/01/24.
//

import UIKit

class recommendedTableViewCell: UITableViewCell {
    @IBOutlet weak var imgv: UIImageView!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var lab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
