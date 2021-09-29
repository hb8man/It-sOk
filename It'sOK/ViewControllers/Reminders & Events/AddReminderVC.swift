//
//  AddReminderVC.swift
//  It'sOK
//
//  Created by William Bateman on 9/3/21.
//

import UIKit

class AddReminderVC: UIViewController {

    @IBOutlet weak var reminderTitleTextField: UITextField!
    
    @IBOutlet weak var reminderNotesTextField: UITextField!
    
    
    // MARK: Properties
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: Actions
    
    @IBAction func saveReminderButtonTapped(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
