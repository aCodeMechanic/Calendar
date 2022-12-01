//
//  TableDataSource.swift
//  calendar
//
//  Created by mac on 01/12/22.
//

import Foundation

protocol TableDataSource{
    var numberOfRows: Int {get}
    
    var numberOfColumns: Int {get}
    
    func label(forColumn column: Int) -> String
    
    func itemFor(row: Int, column: Int) -> String

}
