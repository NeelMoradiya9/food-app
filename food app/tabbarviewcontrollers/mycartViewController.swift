//
//  mycartViewController.swift
//  food app
//
//  Created by Neel  on 01/01/24.
//

import UIKit

class mycartViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var stp2: UIStepper!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var stp1: UIStepper!
    @IBOutlet weak var myview1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 10
        view2.layer.cornerRadius = 10
    }
    
    @IBAction func makepaymentbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "totalpaymentViewController") as! totalpaymentViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func stpact2(_ sender: UIStepper) {
        label2.text = String(sender.value)
    }
    @IBAction func stpact(_ sender: UIStepper) {
        label1.text = String(sender.value)
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "homepageViewController")
        as! homepageViewController
        navigationController?.popViewController(animated: true)
    }
}
