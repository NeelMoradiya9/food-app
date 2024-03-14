//
//  OtpViewController.swift
//  food app
//
//  Created by Neel  on 01/12/23.
//

import UIKit

class OtpViewController: UIViewController {
    @IBOutlet weak var verifybtnout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifybtnout.layer.cornerRadius = 5
        verifybtnout.layer.cornerRadius = 5
        verifybtnout.layer.shadowColor = UIColor.gray.cgColor
        verifybtnout.layer.shadowOpacity = 1
        verifybtnout.layer.shadowOffset = .zero
        verifybtnout.layer.shadowRadius = 5
    }
    
    @IBAction func verifybtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "tabbarViewController") as! tabbarViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "createacViewController")
        as! createacViewController
        navigationController?.popViewController(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
}
