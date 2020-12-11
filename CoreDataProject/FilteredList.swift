//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Amber Spadafora on 12/4/20.
//  Copyright © 2020 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct FilteredList: View {
    var fetchRequest: FetchRequest<Singer>
    
    enum predicateType {
        case beginsWith
        case contains
        case endsWith
    }
    
    init(filter: String, sortDescriptors: [NSSortDescriptor], predicate: predicateType) {
        var predicateString = ""
        switch predicate {
        case .beginsWith:
            predicateString = "BEGINSWITH"
        case .contains:
            predicateString = "CONTAINS[c]"
        case .endsWith:
            predicateString = "ENDSWITH"
        }
        
        fetchRequest = FetchRequest<Singer>(entity: Singer.entity(), sortDescriptors: sortDescriptors, predicate: NSPredicate(format: "lastName \(predicateString) %@", filter))
    }
    var body: some View {
        List(fetchRequest.wrappedValue, id: \.self) { singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
}


