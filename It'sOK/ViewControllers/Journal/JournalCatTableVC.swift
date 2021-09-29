//
//  JournalCatTableVC.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import UIKit

class JournalCatTableVC: UITableViewController {

    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        JCatController.shared.fetchCategories()
        tableView.separatorStyle = .none
    }
    
    
    // MARK: Actions
    @IBAction func addJCategoryButtonTapped(_ sender: Any) {
    
        let alert = UIAlertController(title: "New Category", message: "Enter new category name", preferredStyle: .alert)
        
        alert.addTextField { textField in
            textField.placeholder = "Name"
        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            guard let text = alert.textFields?.first?.text, !text.isEmpty else { return }
            
            JCatController.shared.createJCategory(name: text)
            self.tableView.reloadData()
        }))
        present(alert, animated: true)
    
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return JCatController.shared.categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "jCategoryCell", for: indexPath) as? JournalCatCell else { return UITableViewCell() }

        let Category = JCatController.shared.categories[indexPath.row]
        
        cell.category = Category
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let categoryToDelete = JCatController.shared.categories[indexPath.row]
            JCatController.shared.deleteCategory(journalCategory: categoryToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCategory" {
            guard let destination = segue.destination as? JournalListTableVC, let indexPath = tableView.indexPathForSelectedRow else { return }
            destination.category = JCatController.shared.categories[indexPath.row]
        }
    }

} // End of Class

