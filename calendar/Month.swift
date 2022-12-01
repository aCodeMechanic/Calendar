//
//  Month.swift
//  calendar
//
//  Created by mac on 01/12/22.
//

import Foundation

enum Month: Int {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
    func numberOfDays(isLeap: Bool) -> Int {
        switch self {
        case .January, .March,.May, .July, .August,.October, .December :
            return 31
        case .February :
            return isLeap ? 29: 28
        default:
            return 30
        }
    }
    
}
