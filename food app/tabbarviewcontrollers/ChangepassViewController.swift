//
//  ChangepassViewController.swift
//  food app
//
//  Created by Neel  on 11/01/24.
//

import UIKit

class ChangepassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func resetbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
    }
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
        
    }
}
