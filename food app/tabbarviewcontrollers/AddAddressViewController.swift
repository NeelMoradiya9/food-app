//
//  AddAddressViewController.swift
//  food app
//
//  Created by Neel  on 11/01/24.
//

import UIKit

class AddAddressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "addressViewController")
        as! addressViewController
        navigationController?.popViewController(animated: true)
    }
    @IBAction func savebtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "addressViewController")
        as! addressViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func deletebtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "addressViewController")
        as! addressViewController
        navigationController?.popViewController(animated: true)
    }
}
