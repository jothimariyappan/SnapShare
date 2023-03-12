//
//  HomepageTVC1.swift
//  SnapShare
//
//  Created by Jo on 28/12/22.
//

import UIKit
import Alamofire
import Kingfisher
class HomepageTVC1: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var house = Homepage()
    var num = [1,2,3,4,5]
    var dc = [Model]()
    @IBOutlet var cvc: UICollectionView!
    
    let url = "https://dummyapi.io/data/v1/post?limit=10"

    override func awakeFromNib() {
        super.awakeFromNib()
//        house.getdata()
        cvc.delegate = self
        cvc.dataSource = self
        // Initialization code
        cvc.reloadData()
        print("-------->",dc.count)
        getdata()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func getdata(){
        
        AF.request(url, method: .get ,headers: ["app-id": "63624d572c4963279137bac2"]).responseJSON { [self] resp in
            switch  resp.result{
                
            case .success(let suc):
//                print(suc)
                
                if let value =  suc as? [String:Any]{
                    print(value)
                    if let data = value["data"] as? [[String:Any]]{
//                        print(data[0])
                        for i in data{
                            dc.append(Model(fromdata: i))
                        }
                        cvc.reloadData()
                    }
                }
            case .failure(let err):
                print(err)
            }
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dc.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomepageCVC", for: indexPath) as! HomepageCVC
        cell.imgsnap.kf.setImage(with: URL(string: dc[indexPath.row].image ?? ""))
        cell.imgsnapUser.kf.setImage(with: URL(string: dc[indexPath.row].owner?.picture ?? ""))
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 109, height: 164)
    }
}
