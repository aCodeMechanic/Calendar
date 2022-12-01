//
//  main.swift
//  calendar
//
//  Created by mac on 01/12/22.
//

import Foundation

var c2 = CalendarView(currentMonth: .December, start: .Thursday, isLeap: false)
print(c2)

var c3 = CalendarView(currentMonth: .February, start: .Tuesday, isLeap: false)
print(c3)

var c4 = CalendarView(currentMonth: .February, start: .Thursday, isLeap: true)
print(c4)
