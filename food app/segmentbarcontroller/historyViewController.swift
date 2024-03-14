//
//  historyViewController.swift
//  food app
//
//  Created by Neel  on 17/12/23.
//

import UIKit

class historyViewController: UIViewController  {
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 10
        view1.layer.shadowColor = UIColor.gray.cgColor
        view1.layer.shadowOpacity = 1
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 5
        view2.layer.cornerRadius = 10
        view2.layer.shadowColor = UIColor.gray.cgColor
        view2.layer.shadowOpacity = 1
        view2.layer.shadowOffset = .zero
        view2.layer.shadowRadius = 5
        view3.layer.cornerRadius = 10
        view3.layer.shadowColor = UIColor.gray.cgColor
        view3.layer.shadowOpacity = 1
        view3.layer.shadowOffset = .zero
        view3.layer.shadowRadius = 5
    }
}
