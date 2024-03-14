//
//  billdetailsViewController.swift
//  food app
//
//  Created by Neel  on 07/01/24.
//

import UIKit

class billdetailsViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 10
    }
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "totalpaymentViewController")
        as! totalpaymentViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func totalpaymentbtn(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "paymentsuccessViewController") as! paymentsuccessViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
}
