//
//  ProfilefFriend.swift
//  SnapShare
//
//  Created by Jo on 08/02/23.
//
//{
//dateOfBirth = "1996-04-30T19:26:49.610Z";
//email = "sara.andersen@example.com";
//firstName = Sara;
//gender = female;
//id = 60d0fe4f5311236168a109ca;
//lastName = Andersen;
//location =     {
//    city = Kongsvinger;
//    country = Denmark;
//    state = Nordjylland;
//    street = "9614, S\U00c3\U00b8ndermarksvej";
//    timezone = "-9:00";
//};
//phone = 92694011;
//picture = "https://randomuser.me/api/portraits/women/58.jpg";
//registerDate = "2021-06-21T21:02:07.374Z";
//title = ms;
//updatedDate = "2021-06-21T21:02:07.374Z";
//}

import UIKit
import Alamofire
import Kingfisher

class ProfilefFriend: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 var img = ["21","22","23","24","25","26","27","28","29","30","31","32"]
    
    
    @IBOutlet var clc: UICollectionView!
    
    @IBOutlet var imgcoverpic: UIImageView!
    @IBOutlet var imgProfile: BaseImageView!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblBIo: UILabel!
    @IBOutlet var lblRegdt : UILabel!
    @IBOutlet var lblEmail: UILabel!
    @IBOutlet var lblGender: UILabel!
    @IBOutlet var lblDob: UILabel!
    @IBOutlet var lblPhone: UILabel!
    @IBOutlet var lblCity: UILabel!
    @IBOutlet var lblState: UILabel!
    @IBOutlet var lblCountry: UILabel!
    
    
    @IBOutlet var Details: NSLayoutConstraint!
    
    @IBOutlet var scrl: UIScrollView!
    
    var profleIDe = String()
//    var MCuser = [ModelUser]()
    
    let urlfulluser = "https://dummyapi.io/data/v1/user/"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
//        print(">>---->",profleIDe)
        // Do any additional setup after loading the view.
        Details.constant = 80
//        scrl.isScrollEnabled = false
    }
    
    
    @IBAction func btn(_ sender: UIButton) {
        
       animation(withduration: 1, deLay: 0, animat: Details)
        
        
    }
 
        func animation(withduration: Double , deLay: Double , animat : NSLayoutConstraint){
            UIView.animate(withDuration: withduration, delay: deLay) { [self] in
                
                if animat.constant == 80{
                    animat.constant = 250
//                    scrl.isScrollEnabled = true
                }else{
                    animat.constant = 80
//                    scrl.isScrollEnabled = false
                }
                
            }
        }
    
    @IBAction func btnback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func getdata(){
        
        AF.request(urlfulluser+profleIDe ,method: .get ,headers: ["app-id": "63624d572c4963279137bac2"]).responseJSON { [self] resp in
            switch resp.result{
                
            case .success(let suc):
                                print(suc)
                
                if let value = suc as? [String:Any] {
                    print(value)
                    
                    self.lblName.text = "\(value["title"] as? String ?? "" ).\(value["firstName"] as? String ?? "") \(value["lastName"] as? String ?? "") "
                    self.lblDob.text = value["dateOfBirth"] as? String
                    self.lblEmail.text = value["email"] as? String
                    self.lblGender.text = value["gender"] as? String
                    self.lblPhone.text = "\(value["phone"] as? String ?? "")"
                    self.imgProfile.kf.setImage(with: URL(string: value["picture"] as? String ?? ""))
                    self.lblRegdt.text = value["registerDate"] as? String
                    
                    if let loca = value["location"] as? [String:Any]{
                        print("loca",loca)
                        
                        self.lblCity.text = loca["city"] as? String
                        self.lblState.text = loca["state"] as? String
                        self.lblCountry.text = loca["country"] as? String
                        
                    }
                    
                    
                
                    
                }
                
            case .failure(let err):
                print(err)
            }
        }
        
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "proflefriendCVC", for: indexPath) as! proflefriendCVC
        cell.imgpic.image = UIImage(named: img[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.size.width / 3 , height: collectionView.frame.size.width / 3 )
    }
    
}

    
    
    

    
    
    
//// MARK: - Navigation
//
//class ModelUser{
//    var DOB : String?
//    var Email : String?
//    var name : String?
//    var gender : String?
//    var lstname : String?
//    var Loc : Address?
//    var phone : Int?
//    var image : String?
//    var RGdt : String?
//    var title : String?
//    var UPdt : String?
//    var id : String?
//
//    init(fromdata : [String:Any]){
//
//        self.DOB = fromdata["dateOfBirth"] as? String
//        self.Email = fromdata["email"] as? String
//        self.name = fromdata["firstName"] as? String
//        self.gender = fromdata["gender"] as? String
//        self.lstname = fromdata["lastName"] as? String
//        self.phone = fromdata["phone"] as? Int
//        self.image = fromdata["picture"] as? String
//        self.RGdt = fromdata["registerDate"] as? String
//        self.title = fromdata["title"] as? String
//        self.UPdt = fromdata["updatedDate"] as? String
//        self.id = fromdata["id"] as? String
//
//
//
//        if let Locdetail = fromdata["location"] as? [String:Any]{
//            self.Loc = Address(locdata: Locdetail)
//        }
//
//
//    }
//
//
//}
//
//class Address{
//    var city : String?
//    var country : String?
//    var state : String?
//    var street : String?
//    var tmzone : String?
//
//    init(locdata : [String:Any]){
//        self.city = locdata["city"] as? String
//        self.country = locdata["country"] as? String
//        self.state = locdata["state"] as? String
//        self.street = locdata["street"] as? String
//        self.tmzone = locdata["timezone"] as? String
//
//
//    }
//
//}
