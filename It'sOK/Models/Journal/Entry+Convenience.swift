//
//  JEntry.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import Foundation
import CoreData

extension Entry {
    @discardableResult
    convenience init(name: String, body: String, timestamp: Date = Date(), context: NSManagedObjectContext = coreDataStack.context) {
        self.init(context: context)
        self.name = name
        self.body = body
        self.timestamp = timestamp
    }
}
