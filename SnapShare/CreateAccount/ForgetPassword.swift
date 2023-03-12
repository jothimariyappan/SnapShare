//
//  ForgetPassword.swift
//  SnapShare
//
//  Created by Jo on 30/12/22.
//

import UIKit

class ForgetPassword: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func btnRecoverpswd(_ sender: UIButton) {
        
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VerifyEmail") as! VerifyEmail
        
        self.navigationController?.pushViewController(navg, animated: true)
        
    }
    
    
   

}
