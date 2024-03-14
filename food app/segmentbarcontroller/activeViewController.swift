//
//  activeViewController.swift
//  food app
//
//  Created by Neel  on 15/12/23.
//

import UIKit

class activeViewController: UIViewController {
    
    @IBOutlet weak var ordernowbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ordernowbtn.layer.cornerRadius = 5
        ordernowbtn.layer.cornerRadius = 5
        ordernowbtn.layer.shadowColor = UIColor.gray.cgColor
        ordernowbtn.layer.shadowOpacity = 1
        ordernowbtn.layer.shadowOffset = .zero
        ordernowbtn.layer.shadowRadius = 5

    }
}
