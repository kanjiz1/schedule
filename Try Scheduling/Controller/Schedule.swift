//
//  Schedule.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/9/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import Foundation

class Schedule {
    private var _comments: String!
    private var _shift: Int!
    private var _date: String!
    
    var comments: String {
        return _comments
    }
    
    var shift: Int {
        return _shift
    }
    
    var date: String {
        return _date
    }
    
    init(date: String, shift: Int, comments: String) {
        self._comments = comments
        self._date = date
        self._shift = shift
    }
}
