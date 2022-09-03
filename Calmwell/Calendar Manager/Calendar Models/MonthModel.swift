//
//  MonthModel.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 9/1/22.
//

import Foundation

// MARK: Create the month structure
struct Month: Identifiable {
    
    var id:Int
    var nameOfTheMonth:String
    var daysOfTheMonth:[Day]
    var numberOfDays:Int
    var firstDay:Int
    
}
