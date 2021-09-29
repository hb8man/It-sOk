//
//  EntryCell.swift
//  It'sOK
//
//  Created by William Bateman on 9/1/21.
//

import UIKit

class EntryCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var entryTitleLabel: UILabel!
    @IBOutlet weak var entryTimestampLabel: UILabel!
    @IBOutlet weak var cellRectangle: UIView!
    
    // MARK: Properties
    var entry: Entry? {
        didSet {
            updateViews()
        }
    }
    
    
    // MARK: Lifecycles
    override func awakeFromNib() {
        super.awakeFromNib()
        cellRectangle.layer.opacity = 0.35
        cellRectangle.layer.cornerRadius = 20
    }

    // MARK: Helper Methods
    func updateViews() {
        guard let entry = entry else { return }
        entryTitleLabel.text = entry.name
        entryTimestampLabel.text = entry.timestamp?.dateAsString()
    }

} // End of Class

