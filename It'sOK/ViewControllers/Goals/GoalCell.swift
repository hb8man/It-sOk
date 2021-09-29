//
//  GoalCell.swift
//  It'sOK
//
//  Created by William Bateman on 9/1/21.
//

import UIKit

class GoalCell: UITableViewCell {
    
    // MARK: Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
   
    // MARK: Lifecycles
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    // MARK: Properties
    var goal: Goal? {
        didSet {
            updateGoalViews()
        }
    }
    
    var desire: Desire? {
        didSet {
            updateDesireViews()
        }
    }
    
    // MARK: Helper Methods
    func updateGoalViews() {
        let goal = goal
        nameLabel.text = goal?.name
        timestampLabel.text = goal?.timestamp?.dateAsString()
        descriptionLabel.text = goal?.description
    }
    
    func updateDesireViews() {
        nameLabel.text = desire?.name
        timestampLabel.text = desire?.timestamp?.dateAsString()
        descriptionLabel.text = desire?.description
    }


} // End of Class

