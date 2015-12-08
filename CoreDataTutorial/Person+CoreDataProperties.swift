//
//  Person+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Ada Ji on 12/8/15.
//  Copyright © 2015 Supterada. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Person {

    @NSManaged var name: String
    @NSManaged var age: NSNumber
    @NSManaged var movies: NSOrderedSet?

}
