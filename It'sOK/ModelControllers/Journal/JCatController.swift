//
//  JCatController.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import Foundation
import CoreData

class JCatController {

    // MARK: Properties
    static let shared = JCatController()
    
    var categories: [Category] = []
    
    private lazy var fetchRequest: NSFetchRequest<Category> = {
        let request = NSFetchRequest<Category>(entityName: "It_sOK")
        request.predicate = NSPredicate(value: true)
        return request
    }()
    
    
    // MARK: CRUD Functions
    
    // Create
    func createJCategory(name: String) {
        let newCategory = Category(name: name, context: coreDataStack.context)
        categories.append(newCategory)
        coreDataStack.saveContext()
    }
    
    func createJEntry(name: String, body: String) {
        let newEntry = Entry(name: name, body: body, context: coreDataStack.context)
        newEntry.category?.addToEntries(newEntry)
        coreDataStack.saveContext()
    }
    
    // Read
    
    // Update
    func updateEntry(entry: Entry, category: Category, newTitle: String, newBody: String) {
        coreDataStack.saveContext()
    }
    
    // Delete
    func deleteCategory(journalCategory: Category) {
        guard let index = categories.firstIndex(of: journalCategory) else { return }
        categories.remove(at: index)
        coreDataStack.saveContext()
    }
    
    func deleteEntry(category: Category, entry: Entry) {
        entry.category?.removeFromEntries(entry)
        coreDataStack.saveContext()
    }
    
    func updateEntry(category: Category, entry: Entry, newTitle: String, newText: String) {
        coreDataStack.saveContext()
    }
    
    func fetchCategories() {
        let categoriesToFetch = ( try?
            coreDataStack.context.fetch(fetchRequest)) ?? []
        self.categories = categoriesToFetch
    }
    
    
    
    
} // End of Class

