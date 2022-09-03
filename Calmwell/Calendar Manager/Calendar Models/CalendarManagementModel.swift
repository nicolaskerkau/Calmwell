//
//  CalendarManagementModel.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 9/1/22.
//

import Foundation

/* The primary function of the calendar model is to manage all of the data required for a calendar, to include - but not limited to -
    1. Creating a year, which is comprised of months, each comprised of days;
    2. Creating structures for all future years; */
class CalendarManagementModel: ObservableObject {
    
    var months = [Month]()
    @Published var year = Year(id: 0, monthsOfTheYear: [Month]())
    
    private var monthsInAYear =    ["January",
                                    "February",
                                    "March",
                                    "April",
                                    "May",
                                    "June",
                                    "July",
                                    "August",
                                    "September",
                                    "October",
                                    "November",
                                    "December"]
    
    private var daysInAMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    private var firstDaysOfMonth = [6, 2, 2, 5, 7, 3, 5, 1, 4, 6, 2, 4]
    
    init() {
        // Create a year
        //let currentDateComponents = DateComponents()
        //let currentYear = currentDateComponents.year
        //let currentMonth = currentDateComponents.month
        //let currentDay = currentDateComponents.day
        
        // A loop that executes 12 times
        for xMonth in 0..<12 {
            // For each month, create an empty array of days
            var days = [Day]()
            // loop through the total number of days
            for xDay in 0..<daysInAMonth[xMonth] {
                // add a day object to the array of days
                days.append(Day(id: xDay + 1))
            }
            // for each month, add a Month object to the array of months
            months.append(Month(id: xMonth + 1, nameOfTheMonth: monthsInAYear[xMonth], daysOfTheMonth: days, numberOfDays: daysInAMonth[xMonth], firstDay: firstDaysOfMonth[xMonth]))
        }
        
        // at the end, add the year to the collection of years, where the integer value of the year number is the key,
        // and the content is the array of months.
        // eg: 2022 is the current year, it has 12 months, and each month has x days where each data is an object. 
        self.year = Year(id: 2022, monthsOfTheYear: months)
    }

}
