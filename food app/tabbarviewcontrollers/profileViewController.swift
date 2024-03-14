//
//  profileViewController.swift
//  food app
//
//  Created by Neel  on 11/01/24.
//

import UIKit

class profileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func referandearn(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "ReferearnViewController") as! ReferearnViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    @IBAction func paymentbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "PaymentViewController") as! PaymentViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func adressbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "addressViewController") as! addressViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    @IBAction func changepassbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "ChangepassViewController") as! ChangepassViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func myprofilebtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "manageprofileViewController") as! manageprofileViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "homepageViewController")
        as! homepageViewController
        navigationController?.popViewController(animated: true)
    }
}
