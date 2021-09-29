//
//  Goal.swift
//  It'sOK
//
//  Created by William Bateman on 9/1/21.
//

import Foundation
import CoreData


extension Goal {
    @discardableResult
    convenience init(name: String?, desc: String?, timestamp: Date = Date(), context: NSManagedObjectContext = coreDataStack.context ) {
        self.init(context: context)
        self.name = name
        self.desc = desc
        self.timestamp = timestamp
    }
}

