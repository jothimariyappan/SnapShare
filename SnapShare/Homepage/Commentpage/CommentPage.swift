//
//  CommentPage.swift
//  SnapShare
//
//  Created by Jo on 29/12/22.
//

import UIKit

class CommentPage: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
        var nujm = ["1","2","3","4","5",]
        var like = [Int]()

    @IBOutlet var tbl: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nujm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentTVC", for: indexPath) as! commentTVC
        cell.lblname.text = nujm[indexPath.row]
        if like.contains(indexPath.row){
            cell.imgLike.image = UIImage(named: "99")
        }else{
            cell.imgLike.image = UIImage(named: "66")
        }
        cell.btnlik.tag = indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    @IBAction func btnlike(_ sender: UIButton) {
        
        if like.contains(sender.tag){
            print(like)
            let num = like.lastIndex(of: sender.tag)
            print(num)
            like.remove(at: num ?? 0)
        }else{
            print(sender.tag)
            like.append(sender.tag)
            print(like)
        }
        tbl.reloadData()
    }

}
