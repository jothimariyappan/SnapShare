//
//  PIcviewPage.swift
//  SnapShare
//
//  Created by Jo on 04/01/23.
//

import UIKit

class PIcviewPage: UIViewController {
    
    var image = String()

    @IBOutlet var imgFull: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgFull.image = UIImage(named: image)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
