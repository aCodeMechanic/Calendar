//
//  CalendarView.swift
//  calendar
//
//  Created by mac on 01/12/22.
//

import Foundation

struct CalendarView : TableDataSource, CustomStringConvertible {
    
    var numberOfRows: Int
    
    var numberOfColumns: Int
    
    var currentMonth: Month
    
    var start: Day
    
    var isLeap = false
    
    
    func label(forColumn column: Int) -> String {
        let str = Day(rawValue: column)
        return (str?.description ?? "").uppercased()
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let days = self.currentMonth.numberOfDays(isLeap: isLeap)
        let initialPosition = start.rawValue + 6
        let finalPosition = start.rawValue + 6 + days
        var text = ""
        var position =  (row * numberOfColumns) + column
        if (position > initialPosition && position <= finalPosition) {
            text += "\(position - initialPosition)"
        } else {
            text += "XX"
        }
        return text
    }
    var description: String {
        var value = ""
        value += "\(self.currentMonth)\n"
        for i in 0..<numberOfRows {
            value += "|"
            for j in 0..<numberOfColumns {
                if (i == 0){
                    value += "\(label(forColumn: j).padding(sidesTo: 7, withPad: " ", startingAt: 0))"+"|"
                } else {
                    value += itemFor(row: i, column: j).padding(sidesTo: 7, withPad: " ", startingAt: 0)+"|"
                }
            }
            if(i == 0) {
                var str = "".padding(sidesTo: value.split(separator: "\n").last!.count, withPad: "-", startingAt: 0)
                value += "\n\(str)\n"
            } else {
                value += "\n"
            }
        }
        return value
    }
    
    init(currentMonth: Month, start: Day, isLeap: Bool)  {
        self.currentMonth = currentMonth
        self.start = start
        self.isLeap = isLeap
        numberOfRows = 6
        numberOfColumns = 7
    }
    
}
extension String {
    func padding(sidesTo paddedLength:Int, withPad pad:String=" ", startingAt padStart:Int=0) -> String
       {
          let rightPadded = self.padding(toLength:max(count,paddedLength), withPad:pad, startingAt:padStart)
          return "".padding(toLength:paddedLength, withPad:rightPadded, startingAt:(paddedLength+count)/2 % paddedLength)
       }
}
