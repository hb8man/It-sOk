//
//  ReminderCell.swift
//  It'sOK
//
//  Created by William Bateman on 9/2/21.
//

import EventKit
import UIKit

class ReminderCell: UITableViewCell {

    // MARK: Outlets
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: Properties
    var event: EKEvent? {
        didSet {
            updateEventViews()
        }
    }
    
    var reminder: EKReminder? {
        didSet {
            updateReminderViews()
        }
    }

    // MARK: Helper Functions
    func updateEventViews() {
        
    }
    
    func updateReminderViews() {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
