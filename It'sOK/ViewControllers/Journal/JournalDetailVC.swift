//
//  JournalListVC.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import UIKit

class JournalDetailVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    
    // MARK: Properties
    var entry: Entry?
    var category: Category?
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        bodyTextView.layer.cornerRadius = 20
        titleTextField.layer.cornerRadius = 20
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text, !title.isEmpty, let body = bodyTextView.text, !body.isEmpty else { return }
        
        guard let category = category else { return }
        
        if let entry = entry {
            JCatController.shared.updateEntry(entry: entry, category: category, newTitle: title, newBody: body)
        } else {
            JCatController.shared.createJEntry(name: title, body: body)
        }
        navigationController?.popViewController(animated: true)
        
    }
    
    // MARK: Helper Methods
    func updateViews() {
        guard let entry = entry else { return }
        titleTextField.text = entry.name
        bodyTextView.text = entry.body
    }

} // End of Class

