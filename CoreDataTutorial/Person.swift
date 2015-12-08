//
//  Person.swift
//  CoreDataTutorial
//
//  Created by Ada Ji on 12/8/15.
//  Copyright © 2015 Supterada. All rights reserved.
//

import Foundation
import CoreData


class Person: NSManagedObject {
    
    // MARK: Keys
    
    struct Keys {
        static let Name = "name"
        static let Age = "age"
    }

    // MARK: Initializers
    
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    init(dictionary: [String: AnyObject], context: NSManagedObjectContext) {
        let entity = NSEntityDescription.entityForName("Person", inManagedObjectContext: context)!
        super.init(entity: entity, insertIntoManagedObjectContext: context)
        
        name = dictionary[Keys.Name] as! String
        age = dictionary[Keys.Age] as! NSNumber
    }
    

}
