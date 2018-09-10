//
//  DateExt.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/10/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import Foundation
extension Date {
    var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: noon)!
    }
    var tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: noon)!
    }
    var morning: Date {
        return Calendar.current.date(bySettingHour: 7, minute: 30, second: 0, of: self)!
    }
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    var evening: Date {
        return Calendar.current.date(bySettingHour: 16, minute: 00, second: 0, of: self)!
    }
    var night: Date {
        return Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: self)!
    }
    var month: Int {
        return Calendar.current.component(.month,  from: self)
    }
    var isLastDayOfMonth: Bool {
        return tomorrow.month != month
    }
    
    func getAnyDate(differenceInDate value: Int, partOfDay time: Date) -> Date {
        return Calendar.current.date(byAdding: .day, value: value, to: time)!
    }
}
