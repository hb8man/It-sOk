//
//  JCategory.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import Foundation
import CoreData


extension Category {
    @discardableResult
    convenience init(name: String?, entriesArr: [Entry] = [], context: NSManagedObjectContext = coreDataStack.context) {
        self.init(context: context)
        self.name = name
    }
}

