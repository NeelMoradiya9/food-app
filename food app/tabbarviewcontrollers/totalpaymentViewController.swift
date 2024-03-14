//
//  totalpaymentViewController.swift
//  food app
//
//  Created by Neel  on 07/01/24.
//

import UIKit

class totalpaymentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func makepaymentbtn(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "billdetailsViewController") as! billdetailsViewController
        navigationController?.pushViewController(navigate, animated: true)
        
    }
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "mycartViewController")
        as! mycartViewController
        navigationController?.popViewController(animated: true)
    }
}
