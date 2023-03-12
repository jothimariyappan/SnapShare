//
//  Interst.swift
//  SnapShare
//
//  Created by Jo on 28/12/22.
//

import UIKit

class Interst: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var name = ["Nature","Photojournalism","Fashion","Event","Pet Photography","Fine art","Traval","Wedding","Advertising","Portrait" ,"Sports","Architecture"]
    
    @IBOutlet var btnSelection: UIButton!
    @IBOutlet var cvc: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1) {
//            let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Tabbar") as! Tabbar
//            
//            self.navigationController?.pushViewController(navg, animated: true)
//        }
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterstCVC", for: indexPath) as!  InterstCVC
        cell.lblinterst.text = name[indexPath.item]
        cell.layer.cornerRadius = 10
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterstCVC", for: indexPath) as!  InterstCVC
        cell.backgroundColor = .purple
        cell.lblinterst.textColor = .white
        cvc.reloadData()
    }
    
    @IBAction func btnskip(_ sender: UIButton) {
        
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CompletedAcc") as! CompletedAcc
        
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
        
    @IBAction func btnnxt(_ sender: UIButton) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CompletedAcc") as! CompletedAcc
        
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
    }
    
    
    

