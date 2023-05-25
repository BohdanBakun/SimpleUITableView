//
//  MonthModel.swift
//  SimpleUITableView910
//
//  Created by Богдан Бакун on 16.05.2023.
//

import UIKit

struct Month {
    var monthName: String
    var monthNumber: String
}

struct Monthes {
    static let list = [Month(monthName: "January", monthNumber: "1"),
                Month(monthName: "February", monthNumber: "2"),
                Month(monthName: "March", monthNumber: "3"),
                Month(monthName: "April", monthNumber: "4"),
                Month(monthName: "May", monthNumber: "5"),
                Month(monthName: "June", monthNumber: "6"),
                Month(monthName: "July", monthNumber: "7"),
                Month(monthName: "August", monthNumber: "8"),
                Month(monthName: "September", monthNumber: "9"),
                Month(monthName: "October", monthNumber: "10"),
                Month(monthName: "November", monthNumber: "11"),
                Month(monthName: "December", monthNumber: "12"),
    ]
}
