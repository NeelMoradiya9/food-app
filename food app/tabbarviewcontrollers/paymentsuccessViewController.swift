//
//  paymentsuccessViewController.swift
//  food app
//
//  Created by Neel  on 07/01/24.
//

import UIKit

class paymentsuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func gotohomepagebtn(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "homepageViewController")
        as! homepageViewController
        navigationController?.popToRootViewController(animated: true)
    }
}
