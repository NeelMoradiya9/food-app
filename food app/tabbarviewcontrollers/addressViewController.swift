//
//  addressViewController.swift
//  food app
//
//  Created by Neel  on 11/01/24.
//

import UIKit

class addressViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.borderWidth = 1
        view1.layer.cornerRadius = 5
        view1.layer.borderColor = UIColor.lightGray.cgColor
    }

    @IBAction func addbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "AddAddressViewController")
        as! AddAddressViewController
        navigationController?.pushViewController(x, animated: true)
    }
    @IBAction func retiurnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
    }
}
