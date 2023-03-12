//
//  Age.swift
//  SnapShare
//
//  Created by Jo on 31/12/22.
//

import UIKit

class Age: UIViewController {
    
    
    var datas = Core()
    var age = String()
    
    @IBOutlet var btnbelow13: UIButton!
    
    @IBOutlet var btn13to19: UIButton!
    
    @IBOutlet var btn20to35: UIButton!
    
    @IBOutlet var btn35to60: UIButton!
    
    @IBOutlet var btnabove60: UIButton!
    
    
    @IBOutlet var vu14: BaseView!
    @IBOutlet var lbl13: UILabel!
    
    @IBOutlet var Vu19: BaseView!
    @IBOutlet var lbl19: UILabel!
    
    @IBOutlet var Vu35: BaseView!
    @IBOutlet var lbl35: UILabel!
    
    @IBOutlet var Vu60: BaseView!
    @IBOutlet var lbl60: UILabel!
    
    @IBOutlet var VuAbove60: BaseView!
    @IBOutlet var lblabove60: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        print(age)
        vu14.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
        Vu19.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
        Vu60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
        Vu35.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
        VuAbove60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnbelow13(_ sender: UIButton) {
        age = ""
        age = lbl13.text ?? ""
        print("--->",age)
        
        if  vu14.layer.backgroundColor == UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor{ // LIGHTP
            vu14.layer.backgroundColor = UIColor(red: 0.243, green: 0.129, blue: 0.486, alpha: 1).cgColor // PURPLE
            lbl13.textColor = .white
            
            Vu19.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu35.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            VuAbove60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl35.textColor = .black
            lbl60.textColor = .black
            lbl19.textColor = .black
            lblabove60.textColor = .black
        }else{
            vu14.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl13.textColor = .black
            
        }
        
    }
    
    @IBAction func to19(_ sender: UIButton) {
        age = ""
        age = lbl19.text ?? ""
        print("--->",age)
        if  Vu19.layer.backgroundColor == UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor{
            Vu19.layer.backgroundColor = UIColor(red: 0.243, green: 0.129, blue: 0.486, alpha: 1).cgColor
            lbl19.textColor = .white
            
            
            vu14.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu35.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            VuAbove60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl35.textColor = .black
            lbl60.textColor = .black
            lbl13.textColor = .black
            lblabove60.textColor = .black
        }else{
            Vu19.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl19.textColor = .black
        }
        
    }
    
    @IBAction func btn20to35(_ sender: UIButton) {
        age = ""
        age = lbl35.text ?? ""
        print("--->",age)
        if  Vu35.layer.backgroundColor == UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor{
            Vu35.layer.backgroundColor = UIColor(red: 0.243, green: 0.129, blue: 0.486, alpha: 1).cgColor
            lbl35.textColor = .white
            
            Vu19.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            vu14.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            VuAbove60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl13.textColor = .black
            lbl60.textColor = .black
            lbl19.textColor = .black
            lblabove60.textColor = .black
        }else{
            Vu35.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl35.textColor = .black
        }
    }
    
    @IBAction func btn35to60(_ sender: UIButton) {
        age = ""
        age = lbl60.text ?? ""
        print("--->",age)
        if  Vu60.layer.backgroundColor == UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor{
            Vu60.layer.backgroundColor = UIColor(red: 0.243, green: 0.129, blue: 0.486, alpha: 1).cgColor
            lbl60.textColor = .white
            
            Vu19.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            vu14.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu35.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            VuAbove60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl35.textColor = .black
            lbl13.textColor = .black
            lbl19.textColor = .black
            lblabove60.textColor = .black
        }else{
            Vu60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl60.textColor = .black
        }
    }
    
    @IBAction func btnabove60(_ sender: UIButton) {
        age = ""
        age = lblabove60.text ?? ""
        print("--->",age)
        if  VuAbove60.layer.backgroundColor == UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor{
            VuAbove60.layer.backgroundColor = UIColor(red: 0.243, green: 0.129, blue: 0.486, alpha: 1).cgColor
            lblabove60.textColor = .white
            
            Vu19.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            Vu35.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            vu14.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lbl35.textColor = .black
            lbl60.textColor = .black
            lbl19.textColor = .black
            lbl13.textColor = .black
        }else{
            VuAbove60.layer.backgroundColor = UIColor(red: 0.925, green: 0.914, blue: 0.949, alpha: 1).cgColor
            lblabove60.textColor = .black
        }
    }
    
    @IBAction func btnSkip(_ sender: UIButton) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Interst") as! Interst
        
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
    @IBAction func btnnxt(_ sender: UIButton) {
        
//        datas.save(NAME: UserDefaults.standard.string(forKey: "UDname")!, AGE: age , EMAIL: UserDefaults.standard.string(forKey: "UDemail")!, PASSWORD: UserDefaults.standard.string(forKey: "UDpassword")!, IMAGE: UserDefaults.standard.data(forKey: "UDimg")!)
        datas.fetch()
       
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Interst") as! Interst
//        print("-+->",age)
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
    
    
    
}
