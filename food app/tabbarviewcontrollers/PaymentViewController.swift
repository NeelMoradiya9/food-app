//
//  PaymentViewController.swift
//  food app
//
//  Created by Neel  on 15/01/24.
//

import UIKit

class PaymentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func returnbtact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
    }
    
}
