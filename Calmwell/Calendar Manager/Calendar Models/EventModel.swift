//
//  EventModel.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 9/1/22.
//

import Foundation

class EventModel: ObservableObject {
    
    init() {
        
    }
}

// MARK: Creation of Event structure
struct Event: Identifiable {
    
    var id:Int
    var title:String
    var description:String
    var startTime:Int
    var endTime:Int
    var isRepeatable:Bool
    
}
