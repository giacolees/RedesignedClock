//
//  Extension.swift
//  RedesignedClock
//
//  Created by Giacomo Lisita on 23/11/22.
//

import Foundation

extension Date{
    func toInt(cas:Int) -> Int{
        // Create Date Formatter
        let dateFormatter = DateFormatter()

        // Set Date Format
        dateFormatter.dateFormat = "HH:mm:ss"

        var timez = String()
        // Convert Date to String
        timez = dateFormatter.string(from: self)

        let components = timez.split{ $0 == ":" }.map{ (x) -> Int in return Int(String(x))! }
        var o = 0
        
        switch cas{
        case 0:
           o = components[0]
        case 1:
           o = components[1]
        case 2:
           o = components[2]
        default:
           o = 0
        }
        
        return o
    }
    func toMinutesInt() -> Int{
        // Create Date Formatter
        let dateFormatter = DateFormatter()

        // Set Date Format
        dateFormatter.dateFormat = "HH:mm:ss"

        var timez = String()
        // Convert Date to String
        timez = dateFormatter.string(from: self)

        let components = timez.split{ $0 == ":" }.map{ (x) -> Int in return Int(String(x))! }

        let minutes = components[1]
        
        return minutes
    }
    func toSecondsInt() -> Int{
        // Create Date Formatter
        let dateFormatter = DateFormatter()

        // Set Date Format
        dateFormatter.dateFormat = "HH:mm:ss"

        var timez = String()
        // Convert Date to String
        timez = dateFormatter.string(from: self)

        let components = timez.split{ $0 == ":" }.map{ (x) -> Int in return Int(String(x))! }

        let seconds = components[2]
        
        return seconds
    }
}
