//
//  myorderViewController.swift
//  food app
//
//  Created by Neel  on 05/12/23.
//

import UIKit

class myorderViewController: UIViewController {

    @IBOutlet weak var firstview: UIView!
    @IBOutlet weak var secondview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchViews( sender:UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            firstview.alpha = 1
            secondview.alpha = 0
        } else {
            firstview.alpha = 0
            secondview.alpha = 1
        }
    }

}
