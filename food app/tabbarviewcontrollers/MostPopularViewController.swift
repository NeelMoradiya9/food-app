//
//  MostPopularViewController.swift
//  food app
//
//  Created by Neel  on 10/01/24.
//

import UIKit

class MostPopularViewController: UIViewController {
    var imagearr =  [UIImage(named: "Mask group 1"),UIImage(named: "Mask group-3 1"),UIImage(named: "Mask group-1 1"),UIImage(named: "Mask group-4 1"),UIImage(named: "Mask group-5"),UIImage(named: "Mask group-2 1")]
    var labarr = ["Pizza Hut","Sandwich","La-Pizza","Cheesiano Pizza","manchurian","Chicken manchurian"]
    @IBOutlet weak var cview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension MostPopularViewController : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return imagearr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview.dequeueReusableCell(withReuseIdentifier:"cell" , for: indexPath) as!
        mostpopularCollectionViewCell
        cell.imgv.image = imagearr[indexPath.row]
        cell.lab.text = labarr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 161.5, height: 204)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let x = storyboard?.instantiateViewController(identifier: "detailsViewController")
        as! detailsViewController
        navigationController?.pushViewController(x, animated: true)
    }
}
