//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Amber Spadafora on 12/2/20.
//  Copyright © 2020 Amber Spadafora. All rights reserved.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16

    public var wrappedTitle: String {
        return title ?? "Unknown title"
    }
}
