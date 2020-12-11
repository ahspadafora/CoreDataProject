//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Amber Spadafora on 12/7/20.
//  Copyright © 2020 Amber Spadafora. All rights reserved.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    public var wrappedName: String {
        name ?? "Unknown Candy"
    }
}
