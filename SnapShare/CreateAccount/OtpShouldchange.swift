//
//  OtpShouldchange.swift
//  SnapShare
//
//  Created by Jo on 03/01/23.
//

import Foundation

//class OtpShouldchange: OTPTFDelegate {
//        func didTapBackspace(sender: OTPTextField) {
//            switch sender {
//            case tfOTPTwo:
//                tfOTPOne.becomeFirstResponder()
//            case tfOTPThree:
//                tfOTPTwo.becomeFirstResponder()
//            case tfOTPFour:
//                tfOTPThree.becomeFirstResponder()
//            default:
//                break
//            }
//        }
//        
//        public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//            //print("replacing string :\(string)")
//            if textField == tfPhone {
//                let maxLength = 10
//                let currentString: NSString = (textField.text ?? "") as NSString
//                let newString: NSString =
//                    currentString.replacingCharacters(in: range, with: string) as NSString
//                return newString.length <= maxLength
//            }
//            textField.text = ""
//            if ((textField.text?.count)! < 1) && (string.count > 0) {
//                switch textField {
//                case tfOTPOne:
//                    tfOTPTwo.becomeFirstResponder()
//                case tfOTPTwo:
//                    tfOTPThree.becomeFirstResponder()
//                case tfOTPThree:
//                    tfOTPFour.becomeFirstResponder()
//                case tfOTPFour:
//                    tfOTPFour.resignFirstResponder()
//                default:
//                    break
//                }
//                textField.text = string
//                return false
//            }
//            else if ((textField.text?.count)! >= 1) && (string.count == 0){
//                switch textField {
//                case tfOTPTwo:
//                    tfOTPOne.becomeFirstResponder()
//                case tfOTPThree:
//                    tfOTPTwo.becomeFirstResponder()
//                case tfOTPFour:
//                    tfOTPThree.becomeFirstResponder()
//                    
//                default:
//                    break
//                }
//                textField.text = string
//                return false
//            }
//            else if (textField.text?.count)! >= 1{
//                switch textField {
//                case tfOTPOne:
//                    tfOTPTwo.becomeFirstResponder()
//                case tfOTPTwo:
//                    tfOTPThree.becomeFirstResponder()
//                case tfOTPThree:
//                    tfOTPFour.becomeFirstResponder()
//                case tfOTPFour:
//                    self.tfOTPFour.resignFirstResponder()
//                default:
//                    break
//                }
//                textField.text = string
//                return false
//            }
//            return true
//        }
//    }
//
//
//
////
//
//import UIKit
//
//protocol OTPTFDelegate : UITextFieldDelegate {
//    func didTapBackspace(sender: OTPTextField)
//}
//
//class OTPTextField : UITextField {
//    
//    override func deleteBackward() {
//        let isTextfieldEmpty: Bool = (self.text?.isEmpty)!
//        if isTextfieldEmpty {
//            if let delegate = delegate as? OTPTFDelegate {
//                delegate.didTapBackspace(sender: self)
//            }
//        }
//        super.deleteBackward()
//    }
//    
//}
