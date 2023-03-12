////
////  pgcontrol.swift
////  SnapShare
////
////  Created by Jo on 07/02/23.
////
//
//import UIKit
//
//class pgcontrol: UIViewController {
//    
//    var num = Int()
//    @IBOutlet var pgcont: UIPageControl!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        Timer(timeInterval: 2, target: self, selector: #selector(run), userInfo: <#T##Any?#>, repeats: true)
//        // Do any additional setup after loading the view.
//    }
//    @IBAction func pg(_ sender: UIPageControl) {
//        
//        
//        if pgcont.currentPage == 1{
//            view.backgroundColor = .red
//        }else if pgcont.currentPage == 2{
//            view.backgroundColor = .yellow
//        }else{
//            view.backgroundColor = .brown
//        }
//    }
//    
// @objc func run(){
//        
//        if pgcont.currentPage == 1{
//            view.backgroundColor = .red
//        }else if pgcont.currentPage == 2{
//            view.backgroundColor = .yellow
//        }else{
//            view.backgroundColor = .brown
//        }
//    }
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
