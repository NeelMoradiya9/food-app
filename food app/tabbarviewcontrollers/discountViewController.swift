//
//  discountViewController.swift
//  food app
//
//  Created by Neel  on 05/12/23.
//

import UIKit

class discountViewController: UIViewController {
    
    @IBOutlet weak var ctn6: UIButton!
    @IBOutlet weak var ctn5: UIButton!
    @IBOutlet weak var ctn3: UIButton!
    @IBOutlet weak var ctn4: UIButton!
    @IBOutlet weak var ctn2: UIButton!
    @IBOutlet weak var ctn1: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    override func viewDidLoad() {        super.viewDidLoad()
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
        view4.layer.cornerRadius = 10
        view4.layer.shadowColor = UIColor.gray.cgColor
        view4.layer.shadowOpacity = 1
        view4.layer.shadowOffset = .zero
        view4.layer.shadowRadius = 5
        view5.layer.cornerRadius = 10
        view5.layer.shadowColor = UIColor.gray.cgColor
        view5.layer.shadowOpacity = 1
        view5.layer.shadowOffset = .zero
        view5.layer.shadowRadius = 5
        view6.layer.cornerRadius = 10
        view6.layer.shadowColor = UIColor.gray.cgColor
        view6.layer.shadowOpacity = 1
        view6.layer.shadowOffset = .zero
        view6.layer.shadowRadius = 5
        ctn1.layer.cornerRadius = 10
        ctn2.layer.cornerRadius = 10
        ctn3.layer.cornerRadius = 10
        ctn4.layer.cornerRadius = 10
        ctn5.layer.cornerRadius = 10
        ctn6.layer.cornerRadius = 10
        
        
    }
}


