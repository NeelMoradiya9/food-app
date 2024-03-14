//
//  forgotpassViewController.swift
//  food app
//
//  Created by Neel  on 09/01/24.
//

import UIKit

class forgotpassViewController: UIViewController {
    @IBOutlet weak var verifyout: UIButton!
    @IBOutlet weak var passwordtxtout: UITextField!
    
    @IBOutlet weak var Repasswordtxtout: UITextField!
    @IBOutlet weak var mobilenumtxtout: UITextField!
    @IBOutlet weak var nametxtout: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyout.layer.cornerRadius = 5
        verifyout.layer.cornerRadius = 5
        verifyout.layer.shadowColor = UIColor.gray.cgColor
        verifyout.layer.shadowOpacity = 1
        verifyout.layer.shadowOffset = .zero
        verifyout.layer.shadowRadius = 5
    }
    
    @IBAction func verifyact(_ sender: Any) {
        if nametxtout.text == "" && mobilenumtxtout.text == "" && passwordtxtout.text == ""  && Repasswordtxtout.text == ""
        {
            alert( message: "Please Enter Your Details...")
        }
        else if nametxtout.text == "" && mobilenumtxtout.text == ""  && passwordtxtout.text == ""
        {
            alert(message: "Enter Your E-mail , Mobile Number or Password...")
        }
        else if mobilenumtxtout.text == ""  && passwordtxtout.text == ""
        {
            alert(message: "Enter your Mobile Number and Password...")
        }
        
        else if passwordtxtout.text == ""
        {
            alert(message: "Enter your  Password...")
        }
        else{
            navigation()
        }
        
        func alert(message : String)
        {
            
            
            let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            
            a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
            
            present(a, animated: true)
            
            
        }
        func navigation()
        {
            let navigate = storyboard?.instantiateViewController(identifier: "OtpViewController") as! OtpViewController
            navigationController?.pushViewController(navigate, animated: true)
        }
        
        
    }
}


