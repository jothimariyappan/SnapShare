//
//  EnternewPassword.swift
//  SnapShare
//
//  Created by Jo on 30/12/22.
//

import UIKit

class EnternewPassword: UIViewController {
    
//    var datas = Usercoredata()
    
    @IBOutlet var txtpswd: UITextField!
    @IBOutlet var txtcpswd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    @IBAction func btnContinue(_ sender: UIButton) {
//        datas.fetch()
        
        if txtpswd.text != "" && txtcpswd.text != ""{
            
            
            let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Loginpage") as! Loginpage
            
            self.navigationController?.pushViewController(navg, animated: true)
            
        }else{
            Alert(message: "Password notmatch")
        }
            
        
        
    }
    
    func Alert(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}
