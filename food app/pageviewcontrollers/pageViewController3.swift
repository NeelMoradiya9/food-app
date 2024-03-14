//
//  pageViewController3.swift
//  food app
//
//  Created by Neel  on 28/11/23.
//

import UIKit

class pageViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func nextbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "signinViewController")
        as! signinViewController
        navigationController?.pushViewController(x, animated: true)
    }
    
}
