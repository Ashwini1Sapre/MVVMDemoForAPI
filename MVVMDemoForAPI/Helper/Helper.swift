//
//  Helper.swift
//  MVVMDemoForAPI
//
//  Created by Knoxpo MacBook Pro on 01/04/21.
//
import SwiftUI
import Foundation

extension URL {
    var formatted: String {
        (host ?? "").replacingOccurrences(of: "www", with: "")
        
    }
}


extension Int {
 var formatted: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self)) ?? ""
       
    }
}

extension Date {
    var timeAgo: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .short
        return formatter.localizedString(for: self, relativeTo: Date())
       
    }
   
}


extension Color {
    static var teal: Color {
        Color(UIColor.systemTeal)
    }
}




















