//
//  DateFormatter.swift
//  It'sOK
//
//  Created by William Bateman on 8/31/21.
//

import Foundation

extension Date {
    
    func dateAsString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        
        return formatter.string(from: self)
    }
    
}
