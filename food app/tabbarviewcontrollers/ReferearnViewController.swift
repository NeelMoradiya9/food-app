//
//  ReferearnViewController.swift
//  food app
//
//  Created by Neel  on 12/01/24.
//

import UIKit

class ReferearnViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func returnbtn(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
    }
}
