//
//  Homepage.swift
//  SnapShare
//
//  Created by Jo on 28/12/22.
//

import UIKit
import Alamofire
import Kingfisher

class Homepage: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet var ImgUSprofile: UIImageView!
    @IBOutlet var lblUSname: UILabel!
    
    let url = "https://dummyapi.io/data/v1/post?limit=10"
    
    var num = [1,2,3,4,5]
    var likecount = [Int]()
    var dc = [Model]()   // api instance
    var datas = Core()   // coredata instance
    var img = NSData()
    
    @IBOutlet var tbl: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tbl.reloadData()
        getdata()
        datas.fetch()
//        print(dc[1].id)
        // Do any additional setup after loading the view.

     
        
    }
    
//    func display(){
//        datas.fetch()
//
//        lblUSname.text = datas.fetchdata
//
//
//    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
            
        }else{
            return dc.count
        }
   
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomepageTVC1", for: indexPath) as! HomepageTVC1
            
            cell.cvc.reloadData()
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomepageTVC2", for: indexPath)as! HomepageTVC2
            cell.lblUsername.text =  "\(dc[indexPath.row].owner?.title ?? "") \(dc[indexPath.row].owner?.firstname ?? "") \(dc[indexPath.row].owner?.lastname ?? "") "
            cell.imgpostUserProfie.kf.setImage(with: URL(string: dc[indexPath.row].owner?.picture ?? ""))
            cell.lbldate.text = dc[indexPath.row].publishdate ?? ""
            cell.lbllikecount.text = "\(dc[indexPath.row].likes ?? 0)"
            cell.lblTags.text = "\(dc[indexPath.row].tags ?? [""] )"
//            cell.imgpostUser.image = dc[indexPath.row].owner?.picture
            cell.imgpostUser.kf.setImage(with: URL(string: dc[indexPath.row].image  ?? ""))
            cell.btndidselect.tag = indexPath.row
                
            cell.btnlike.tag = indexPath.row
            if !likecount.contains(indexPath.row){
                cell.imglike.image = UIImage(named: "66")
            }else
            {
                cell.imglike.image = UIImage(named: "99")
            }
           
            
            
            return cell
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 220
        }else{
            return 364
        }
    }
    
 
 //MARK: - BUTTOUNS
    
    @IBAction func btndidselect(_ sender: UIButton) {
        print(sender.tag)
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfilefFriend") as! ProfilefFriend
//       
        navg.profleIDe = "\(dc[sender.tag].owner?.proid ?? "")"
        self.navigationController?.pushViewController(navg, animated: true)
        
    }
    
    @IBAction func btncoment(_ sender: UIButton) {
        
        
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CommentPage") as! CommentPage
      
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
    @IBAction func btnsearch(_ sender: UIButton) {
      
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPage
     
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
    @IBAction func btnlike(_ sender: UIButton) {
        print(sender.tag)
        if !likecount.contains(sender.tag){
            likecount.append(sender.tag)
        }else{
            let count = likecount.lastIndex(of: sender.tag)
            likecount.remove(at: count ?? 0)
        }
        tbl.reloadData()
    }
    
    
    func getdata(){
        
        AF.request(url, method: .get ,headers: ["app-id": "63624d572c4963279137bac2"]).responseJSON { [self] resp in
            switch  resp.result{
                
            case .success(let suc):
//                print(suc)
                
                if let value =  suc as? [String:Any]{
//                    print(value)
                    if let data = value["data"] as? [[String:Any]]{
                        print("001",data[0])
                        for i in data{
                            dc.append(Model(fromdata: i))
                        }
                        tbl.reloadData()
                    }
                }
            case .failure(let err):
                print(err)
            }
        }
        
    }
}

class Model{

   
    var id : String?
    var image : String?
    var likes : Int?
    var owner :  Owner?
    var publishdate : String?
    var tags : [String]?
    var text : String?
    

    
    init (fromdata : [String:Any]){
        
        self.id = fromdata["id"] as? String
        self.image = fromdata["image"] as? String
        self.likes = fromdata["likes"] as? Int
       
        self.publishdate = fromdata["publishDate"] as? String
        self.tags = fromdata["tags"] as? [String]
        self.text = fromdata["text"] as? String
        
        if let ownerdata = fromdata["owner"] as? [String:Any]{
            self.owner = Owner(fromdataowner: ownerdata)
        }
       
    }

}

class Owner{
    
    var firstname : String?
    var proid : String?
    var lastname : String?
    var picture : String?
    var title : String?
    
    init(fromdataowner : [String:Any]){
        self.proid = fromdataowner["id"] as? String
        self.firstname = fromdataowner["firstName"] as? String
        self.lastname = fromdataowner["lastName"] as? String
        self.title = fromdataowner["title"] as? String
        self.picture = fromdataowner["picture"] as? String
    }
}
