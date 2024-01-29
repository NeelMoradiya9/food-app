//
//  ViewController.swift
//  food app
//
//  Created by Neel  on 27/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signinbtnoutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signinbtnoutlet.layer.cornerRadius = 10
        signinbtnoutlet.layer.cornerRadius = 5
        signinbtnoutlet.layer.shadowColor = UIColor.gray.cgColor
        signinbtnoutlet.layer.shadowOpacity = 1
        signinbtnoutlet.layer.shadowOffset = .zero
        signinbtnoutlet.layer.shadowRadius = 5
    }


    @IBAction func signinact(_ sender: Any) {
        
            let x = storyboard?.instantiateViewController(identifier: "pageViewController")
            as! pageViewController
            navigationController?.pushViewController(x, animated: true)
    }
}

