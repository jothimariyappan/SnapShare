//
//  SearchTVC3.swift
//  SnapShare
//
//  Created by Jo on 29/12/22.
//

import UIKit

class SearchTVC3: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var tblproto : imgpass!
//    var name1 = ["jothi","mani","varghese","steve","rabin"]
    var page = ["1","2","3","4","5"]

    @IBOutlet var cvc3: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return page.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tvcCVC3", for: indexPath) as! tvcCVC3
        cell.imgpost.image = UIImage(named: page[indexPath.item])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / 2 - 0, height: collectionView.frame.size.width / 2 - 0)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.tblproto.pass(post: page[indexPath.item])
    }

}
protocol imgpass{
    
    func pass(post:String)
    
    
}
