//
//  categoriesViewController.swift
//  food app
//
//  Created by Neel  on 26/12/23.
//

import UIKit

class categoriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "homepageViewController")
        as! homepageViewController
        navigationController?.popViewController(animated: true)
    }
}
