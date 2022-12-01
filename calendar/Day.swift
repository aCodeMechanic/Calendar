//
//  Day.swift
//  calendar
//
//  Created by mac on 01/12/22.
//

import Foundation

enum Day: Int, CustomStringConvertible {
    case Sunday = 0
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    var description: String {
        switch self {
        case .Sunday:
            return "Sun"
        case .Monday:
            return "Mon"
        case .Tuesday:
            return "Tue"
        case .Wednesday:
            return "Wed"
        case .Thursday:
            return "Thu"
        case .Friday:
            return "Fri"
        default: return "Sat"
        }
    }
}
