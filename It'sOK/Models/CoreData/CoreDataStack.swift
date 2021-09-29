//
//  CoreDataStack.swift
//  It'sOK
//
//  Created by William Bateman on 9/9/21.
//

import Foundation
import CoreData
import CloudKit

enum coreDataStack {
    
    static let container: NSPersistentCloudKitContainer = {
        
        let container = NSPersistentCloudKitContainer(name: "It'sOK")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                fatalError("Error loading persistent stores: \(error)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext {
        let context = container.viewContext
        context.automaticallyMergesChangesFromParent = true
        return context
    }
    
    static func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("Error saving context: \(error)")
            }
        }
    }
    
} // End of enum

