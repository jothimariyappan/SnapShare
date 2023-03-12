//
//  SearchPage.swift
//  SnapShare
//
//  Created by Jo on 29/12/22.
//

import UIKit

class SearchPage: UIViewController,UITableViewDelegate,UITableViewDataSource,imgpass {
    func pass(post: String) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PIcviewPage") as! PIcviewPage
        navg.image = post
        self.navigationController?.present(navg, animated: true)
    }
    
    
    var passing : imgpass!
    
    @IBOutlet var viewsearch: UIView!
    
    var page = [1,2,3,4,5]
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnback(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: - TABLEVIEW
    func numberOfSections(in tableView: UITableView) -> Int {
      return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else{
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTVC1", for: indexPath) as! SearchTVC1
            cell.cvc1.reloadData()
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTVC2", for: indexPath) as! SearchTVC2
            cell.cvc2.reloadData()
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTVC3", for: indexPath) as! SearchTVC3
            cell.cvc3.reloadData()
            cell.tblproto = self
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
           return 55
        }else if indexPath.section == 1{
            return 250
        }else{
          return  400
        }
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPage
////        navg.passing.pass(post: )
//        self.navigationController?.pushViewController(navg, animated: true)
//    }
    
 
}

