//
//  JournalListTableVC.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import UIKit
import Foundation

class JournalListTableVC: UITableViewController {

    // MARK: Properties
    var category: Category? {
        didSet {
            print("Did set category")
        }
    }
    
    
    
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as? EntryCell else { return UITableViewCell() }
    
        
        
        return cell
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let category = category else { return }
        
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? JournalDetailVC else { return }
        destination.category = category
        if segue.identifier == "toJournalDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow, let category = category else { return }
        }
    }
    
} // End of Class

