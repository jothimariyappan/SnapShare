////
////  Usercoredata.swift
////  SnapShare
////
////  Created by Jo on 05/01/23.
////
//
//import Foundation
//import UIKit
//import CoreData
//
//
//class Usercoredata{
//    
//    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//    
//    var fetchdata = [Entity]()
//    
//    func save(username: String , email: String, password: String){
//        
//        let user = Entity(context: context)
//        user.name = username
//        user.email = email
//        user.password = password
//        do{
//            try context.save()
//            print("ok")
//        }catch{
//            print("error")
//        }
//        
//        
//        
//    }
//    
//    func fetch(){
//        do{
//            let value = try context.fetch(Entity.fetchRequest())
//            fetchdata = value
//            print(value)
//        }catch{
//            print("error")
//        }
//    }
//    
//    
//    
//    
//}
