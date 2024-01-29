//
//  pageViewController.swift
//  food app
//
//  Created by Neel  on 27/11/23.
//

import UIKit

class pageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonact(_ sender: Any) {
        
            let x = storyboard?.instantiateViewController(identifier: "pageViewController2")
            as! pageViewController2
            navigationController?.pushViewController(x, animated: false)
    }
    
    
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func skipbtn(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "signinViewController")
        as! signinViewController
        navigationController?.pushViewController(x, animated: true)
    }
}
