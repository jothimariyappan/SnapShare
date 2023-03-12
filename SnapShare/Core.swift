//
//  Core.swift
//  SnapShare
//
//  Created by Jo on 09/02/23.
//

import Foundation
import CoreData
import UIKit

class Core{
    
    let context = (UIApplication.shared.delegate as!  AppDelegate).persistentContainer.viewContext
    var fetchdata = [Entity]()
    var details = [String]()
    func save(NAME : String, AGE : String , EMAIL : String, PASSWORD : String, IMAGE: Data){
        
        let userdetail = Entity(context: context)
        userdetail.name = NAME
        userdetail.age = AGE
        userdetail.email = EMAIL
        userdetail.password = PASSWORD
        userdetail.imagepro = IMAGE
        
        do{
           try context.save()
            print("OK")
            
            
        }catch{
            print("err")
        }
        
        
        
        
    }
    
    func fetch(){
        do{
            let fetchvalue = try context.fetch(Entity.fetchRequest())
            fetchdata = fetchvalue
            print(fetchvalue)
            for user in fetchvalue {
                details.append("Name: \(user.name ?? ""); Email: \(user.email ?? ""); Age: \(user.age)")
//                details.append("\(user)")
            }
//            details.append("\(fetchvalue)")
            print("det->",details)
        }catch{
            print("err")
        }
        
        
    }
    
    
    
    
    
}
