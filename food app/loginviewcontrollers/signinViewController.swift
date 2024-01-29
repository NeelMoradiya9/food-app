//
//  signinViewController.swift
//  food app
//
//  Created by Neel  on 29/11/23.
//

import UIKit

class signinViewController: UIViewController {
    @IBOutlet weak var loginbtnout: UIButton!
    @IBOutlet weak var emailtxtout: UITextField!
    @IBOutlet weak var passwordtxtout: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbtnout.layer.cornerRadius = 5
        loginbtnout.layer.shadowColor = UIColor.gray.cgColor
        loginbtnout.layer.shadowOpacity = 1
        loginbtnout.layer.shadowOffset = .zero
        loginbtnout.layer.shadowRadius = 5
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func loginbtnact(_ sender: Any) {
        if emailtxtout.text == "" && passwordtxtout.text == ""
        {
            alert( message: "Enter Your User Name And password...")
        }
        else if emailtxtout.text == ""
        {
            alert(message: "Enter your username....")
        }
        else if passwordtxtout.text == ""
        {
            alert(message: "Enter your password...")
        }
        else
        {
            navigation()
        }
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
        let navigate = storyboard?.instantiateViewController(identifier: "createacViewController") as! createacViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}
