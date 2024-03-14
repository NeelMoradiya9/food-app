//
//  homepageViewController.swift
//  food app
//
//  Created by Neel  on 05/12/23.
//

import UIKit

class homepageViewController: UIViewController {
    
    @IBOutlet weak var cview: UICollectionView!
    @IBOutlet weak var cview2: UICollectionView!
    var imagearr =  [UIImage(named: "burger"),UIImage(named: "pizza"),UIImage(named: "manchurian")]
    var imgarray =  [UIImage(named: "img1"),UIImage(named: "img2"),UIImage(named: "img3")]
    var name = ["mcdonald's","pizza hut","Trishiv"]
    var name2 = ["Pizza Hut","Sandwich","La-Pizza"]
    var price = ["$12.00","$6.50","$8.30"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func seeallbtn2(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "RecommendedViewController") as! RecommendedViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    @IBAction func profilebtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "profileViewController") as! profileViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func mostpopularbtn(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "MostPopularViewController") as! MostPopularViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func cartbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "mycartViewController") as! mycartViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func seeallbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "categoriesViewController") as! categoriesViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}
extension homepageViewController :  UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == cview{
            return imagearr.count
        }
        else{
            return imgarray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == cview {
            let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! HomePageCollectionViewCell
            cell.imagev.image = imagearr[indexPath.row]
            cell.lab1.text = name[indexPath.row]
            return cell
        }else{
            let cell2 = cview2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! Homepage2CollectionViewCell
            cell2.imgv.image = imgarray[indexPath.row]
            cell2.lab1.text = name2[indexPath.row]
            cell2.pricelab.text = price[indexPath.row]
             
            return cell2
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == cview {
            return CGSize(width: 251, height: 182)
        }else
        {
            return CGSize(width: 133, height: 168)
        }
    }
}



