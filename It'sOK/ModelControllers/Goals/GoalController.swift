//
//  GoalController.swift
//  It'sOK
//
//  Created by William Bateman on 9/1/21.
//

import Foundation
import CoreData

class GoalController {

    // MARK: Properties
    static let shared = GoalController()
    var goals: [Goal] = []
    
    private lazy var fetchRequest: NSFetchRequest<Goal> = {
        let request = NSFetchRequest<Goal>(entityName: "Goal")
        request.predicate = NSPredicate(value: true)
        return request
    }()
    
    // MARK: CRUD Functions
    func createGoal(name: String, description: String) {
        let newGoal = Goal(name: name, desc: description, context: coreDataStack.context)
        goals.append(newGoal)
        coreDataStack.saveContext()
    }
    
    func updateGoal(name: String, description: String) {
        
    }
    
    func deleteGoal(goal: Goal) {
        guard let index = goals.firstIndex(of: goal) else { return }
        goals.remove(at: index)
        coreDataStack.saveContext()
    }
    
} // End of Class

