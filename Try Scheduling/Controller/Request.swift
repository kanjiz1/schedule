//
//  Request.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/10/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import Foundation

class Request {
    private var _shift: Int!
    private var _date: String!
    private var _comments: String!
    var requestType:shiftLength
    
    var shift: Int {
        return _shift
    }
    
    var date: String {
        return _date
    }
    
    var comments: String {
        return _comments
    }
    
    enum shiftLength: String {
        case fullShift = "8 Hours"
        case halfShift = "4 Hours"
    }
    
    init(dateOfRequest date: String, shiftOfRequest shift: Int, shiftLength length: shiftLength, anyComments comment: String) {
        _date = date
        _shift = shift
        requestType = length
        _comments = comment
    }
}
