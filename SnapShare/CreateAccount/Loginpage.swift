//
//  Loginpage.swift
//  SnapShare
//
//  Created by Jo on 27/12/22.
//

import UIKit
import CoreData



class Loginpage: UIViewController {
    

    @IBOutlet var btnSignin: UIButton!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    var emtyEmail = String()
    
    var datas = Core()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }
    
    
    
// MARK: - BUTTONS
    @IBAction func btnEye(_ sender: UIButton) {
        if txtPassword.isSecureTextEntry == true{
            txtPassword.isSecureTextEntry = false
        }else{
            txtPassword.isSecureTextEntry = true
        }
    }
// MARK: - BUTTON SIGININ Navigation

    @IBAction func btnSignin(_ sender: UIButton) {
        datas.fetch()
        
        if txtEmail.text != "" && txtPassword.text != ""{
            
            let userchecking = datas.fetchdata.contains(where: {
                $0.name == txtEmail.text ?? "" && $0.password == txtPassword.text ?? ""
                
            })
            if !userchecking{
                
//                let userfetch = datas.fetchdata.contains ( where: {
//                    if $0.email == txtEmail.text{
////
//                    }
//                let value = datas.fetchdata
//                var mail = txtEmail.text
//                for i in value{
//
//                    value.contains(i)
//                        print(i)
//
//                }
//
//
//
//                })
                
                let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Tabbar") as! Tabbar
                
                self.navigationController?.pushViewController(navg, animated: true)
              
            }else{
                Alert(message: "user id notmatch")
            }
            
        }else{
            Alert(message: "Empty Textfild")
        }
        
       
        
    }
    
   
    
// MARK: - BUTTON RESET PASSWORD
    @IBAction func btnforgetpswd(_ sender: UIButton) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ForgetPassword") as! ForgetPassword
        
        self.navigationController?.pushViewController(navg, animated: true)
        
    }
    
    @IBAction func btnCreateAcc(_ sender: UIButton) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SigninPage") as! SigninPage
        
        self.navigationController?.pushViewController(navg, animated: true)
        
        
        
        
    }
// MARK: - BUTTONS ONLINE LOGIN
    @IBAction func btnfb(_ sender: UIButton) {
        
        
    }
    
    @IBAction func btnGoogle(_ sender: UIButton) {
        
    }
    
    
    
    
// MARK: - ALERT - FUNCTION
    func Alert(message : String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }

}
//extension Loginpage : GIDSignIn/
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

