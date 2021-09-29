//
//  JournalCatCell.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import UIKit

class JournalCatCell: UITableViewCell {

    
    @IBOutlet weak var cellRectangle: UIView!
    @IBOutlet weak var jCategoryLabel: UILabel!
    
    // MARK: Properties
    var category: Category? {
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
        guard let category = category else { return }
        jCategoryLabel.text = category.name
    }

} // End of Class

