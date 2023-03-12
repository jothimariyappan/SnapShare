//
//  SigninPage.swift
//  SnapShare
//
//  Created by Jo on 30/12/22.
//

import UIKit

class SigninPage: UIViewController {
    
    
    @IBOutlet var txtemail: UITextField!
    @IBOutlet var txtusername: UITextField!
    @IBOutlet var txtpswd: UITextField!
    @IBOutlet var txtCpswd: UITextField!
    
 
var datas = Core()
    
    override func viewDidLoad() {
        super.viewDidLoad()
hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    @IBAction func btnSigIN(_ sender: UIButton) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Loginpage") as! Loginpage
        
        self.navigationController?.pushViewController(navg, animated: true)
        
    }
    
    @IBAction func btnsignUp(_ sender: UIButton) {

        if txtusername.text != "" && txtemail.text != "" && txtpswd.text != "" && txtCpswd.text != "" {

            if txtpswd.text == txtCpswd.text{
                
                datas.fetch()

                let alreadyuser = datas.fetchdata.contains(where: {
                    $0.name == txtusername.text ?? "" && $0.email == txtemail.text ?? ""
                })

                if !alreadyuser{

        UserDefaults.standard.set(txtusername.text, forKey: "UDname")
        UserDefaults.standard.set(txtemail.text, forKey: "UDemail")
        UserDefaults.standard.set(txtpswd.text, forKey: "UDpassword")

                    let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Addphoto") as! Addphoto
        

                    self.navigationController?.pushViewController(navg, animated: true)


                }else{

                    Alert(message: "User alerady exit")
                }

            }else{

                Alert(message: "Password Notmatch")
            }

        }else{

            Alert(message: "Empty Textfild")
        }




    }
    func Alert(message : String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }

    }
    /*

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  


        



