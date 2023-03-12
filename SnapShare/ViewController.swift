//
//  ViewController.swift
//  SnapShare
//
//  Created by Jo on 27/12/22.
//

import UIKit


class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1) {
            let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Loginpage") as! Loginpage
            
            self.navigationController?.pushViewController(navg, animated: true)
        }
    
        // Do any additional setup after loading the view.
    }


}

