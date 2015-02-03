//
//  DepartureOneBedroomTableViewCell.swift
//  OaksHousekeepingSalary
//
//  Created by Allen Lai on 2015/2/2.
//  Copyright (c) 2015年 AandA. All rights reserved.
//

import UIKit

class DepartureOneBedroomTableViewCell: UITableViewCell {

    let date = NSDate()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        var today = getDayOfWeek(date)
        
        if selected == true {
            switch today! {
            case 1, 2, 3, 4, 5:
                let charge = 14.95
            case 6:
                let charge = 18.69
            case 7:
                let charge = 20.94
            default:
                let charge = 29.91
            }
        }
    }
    
    func getDayOfWeek(date: NSDate) -> Int? {
            let calendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
            let components = calendar?.components(NSCalendarUnit.WeekdayCalendarUnit, fromDate: date)
            let weekDay = components?.weekday
            return weekDay
    }

}
