//
//  saveViewController.swift
//  food app
//
//  Created by Neel  on 05/12/23.
//

import UIKit

class saveViewController: UIViewController {
    
    @IBOutlet weak var cartbtn: UIButton!
    var imagearr =  [UIImage(named: "Mask group (3)"),UIImage(named: "Mask group (4)"),UIImage(named: "Mask group (5)"),UIImage(named: "Mask group (6)"),UIImage(named: "Mask group (7)"),UIImage(named: "Mask group (8)"),UIImage(named: "Mask group (10)"),UIImage(named: "Mask group (11)"),UIImage(named: "Mask group (12)"),UIImage(named: "Mask group (13)")]
     var labarr = ["Burger monster","Coffee King","Raju’s Sandwiches ","Ajay’s Fast Food","Ludu Sandwiches","Ajay’s Fast Food","Don's Cafe","Let's Meet Cafe","Mumbai's Grill","Mahalaxmi Food & Juice Center"]
    @IBOutlet weak var tbview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func cartbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "mycartViewController") as! mycartViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}
extension saveViewController : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        saveTableViewCell
        
        cell.imagev.image = imagearr[indexPath.row]
        cell.label.text = labarr[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
}
