//
//  pageViewController2.swift
//  food app
//
//  Created by Neel  on 28/11/23.
//

import UIKit

class pageViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func buttonact(_ sender: Any) {
        
            let x = storyboard?.instantiateViewController(identifier: "pageViewController3")
            as! pageViewController3
            navigationController?.pushViewController(x, animated: false)
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
}
