//
//  createacViewController.swift
//  food app
//
//  Created by Neel  on 30/11/23.
//

import UIKit

class createacViewController: UIViewController {
    
    @IBOutlet weak var signupout: UIButton!
    @IBOutlet weak var nametxtout: UITextField!
    @IBOutlet weak var emailtxtout: UITextField!
    @IBOutlet weak var mobilenumtxtout: UITextField!
    @IBOutlet weak var referralcodetxtout: UITextField!
    @IBOutlet weak var passwordtxtout: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signupout.layer.cornerRadius = 5
        signupout.layer.cornerRadius = 5
        signupout.layer.shadowColor = UIColor.gray.cgColor
        signupout.layer.shadowOpacity = 1
        signupout.layer.shadowOffset = .zero
        signupout.layer.shadowRadius = 5
    }
    
    @IBAction func signupbtnact(_ sender: Any) {
        if nametxtout.text == "" && emailtxtout.text == "" && mobilenumtxtout.text == ""  && passwordtxtout.text == ""
        {
            alert( message: "Please Enter Your Details...")
        }
        else if emailtxtout.text == "" && mobilenumtxtout.text == ""  && passwordtxtout.text == ""
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
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "signinViewController")
        as! signinViewController
        navigationController?.popViewController(animated: true)
    }
}
