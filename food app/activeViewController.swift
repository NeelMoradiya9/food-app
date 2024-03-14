//
//  activeViewController.swift
//  food app
//
//  Created by Neel  on 25/12/23.
//

import UIKit

class activeViewController: UIViewController {

    @IBOutlet weak var ordernowout: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ordernowout.layer.cornerRadius = 5
        ordernowout.layer.cornerRadius = 5
        ordernowout.layer.shadowColor = UIColor.gray.cgColor
        ordernowout.layer.shadowOpacity = 1
        ordernowout.layer.shadowOffset = .zero
        ordernowout.layer.shadowRadius = 5

    }
    

}
