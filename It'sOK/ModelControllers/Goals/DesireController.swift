//
//  DesireController.swift
//  It'sOK
//
//  Created by William Bateman on 9/1/21.
//

import Foundation
import CoreData


class DesireController {

    // MARK: Properties
    static let shared = DesireController()
    var desires: [Desire] = []
    
    private lazy var fetchRequest: NSFetchRequest<Desire> = {
        let request = NSFetchRequest<Desire>(entityName: "Desire")
        request.predicate = NSPredicate(value: true)
        return request
    }()
    
    // MARK: CRUD Functions
    func createDesire(name: String, desc: String) {
        let newDesire = Desire(name: name, desc: desc, context: coreDataStack.context)
        desires.append(newDesire)
        coreDataStack.saveContext()
    }
    
    func fetchDesires() {
        let desiresToFetch = ( try?
            coreDataStack.context.fetch(fetchRequest)) ?? []
        self.desires = desiresToFetch
    }
    
    func deleteDesire(desire: Desire) {
        guard let index = desires.firstIndex(of: desire) else { return }
        desires.remove(at: index)
        coreDataStack.saveContext()
    }
    
} // End of Class
