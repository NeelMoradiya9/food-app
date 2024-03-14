//
//  manageprofileViewController.swift
//  food app
//
//  Created by Neel  on 11/01/24.
//

import UIKit

class manageprofileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func savebtnact(_ sender: Any) {
        _ = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "profileViewController")
        as! profileViewController
        navigationController?.popViewController(animated: true)
    }

}
