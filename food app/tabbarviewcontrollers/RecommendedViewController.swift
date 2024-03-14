//
//  RecommendedViewController.swift
//  food app
//
//  Created by Neel  on 09/01/24.
//

import UIKit

class RecommendedViewController: UIViewController {
    var imagearr =  [UIImage(named: "burger"),UIImage(named: "donut"),UIImage(named: "manchurian"),UIImage(named: "milkshake")]
    var name = ["McDonald's","Super Donuts","Trishiv Chinese","Bismillah Juice Center"]
    var rating = ["3.5","4.5","3","4.5"]
    @IBOutlet weak var tview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func returnbtnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "homepageViewController")
        as! homepageViewController
        navigationController?.popViewController(animated: true)
    }
}
extension RecommendedViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagearr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tview.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        as! recommendedTableViewCell
        cell.imgv.image = imagearr[indexPath.row]
        cell.imgv.layer.cornerRadius = 5
        cell.lab.text = name[indexPath.row]
        cell.rating.text = rating[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
    
    
}

