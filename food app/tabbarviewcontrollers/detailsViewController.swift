//
//  detailsViewController.swift
//  food app
//
//  Created by Neel  on 17/01/24.
//

import UIKit

class detailsViewController: UIViewController {
    
    
    @IBOutlet weak var myview1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myview1.layer.borderWidth = 1
        myview1.layer.cornerRadius = 5
    }
    

    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "MostPopularViewController")
        as! MostPopularViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func ordernowbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "mycartViewController")
        as! mycartViewController
        navigationController?.pushViewController(x, animated: true)
    }
}
