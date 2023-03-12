//
//  Entity+CoreDataProperties.swift
//  SnapShare
//
//  Created by Jo on 05/01/23.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var name: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var imagepro: Data?
    @NSManaged public var age: String?

}

extension Entity : Identifiable {
    
}
