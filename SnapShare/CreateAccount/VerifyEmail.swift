//
//  VerifyEmail.swift
//  SnapShare
//
//  Created by Jo on 30/12/22.
//

import UIKit

class VerifyEmail: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txt1: UITextField!
    @IBOutlet var txt2: UITextField!
    @IBOutlet var txt3: UITextField!
    @IBOutlet var txt4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txt1.delegate = self
        txt2.delegate = self
        txt3.delegate = self
        txt4.delegate = self
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    @IBAction func btnVerifyandProceed(_ sender: UIButton) {
        
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EnternewPassword") as! EnternewPassword
        
        self.navigationController?.pushViewController(navg, animated: true)
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1){
            switch textField {
            case txt1:
                txt1.text 
                txt2.becomeFirstResponder()
            case txt2:
                txt3.becomeFirstResponder()
            case txt3:
                txt4.becomeFirstResponder()
            case txt4:
                txt4.resignFirstResponder()
            default:
                break
            }
        };
        textField.text = string
        return false
    }
}
