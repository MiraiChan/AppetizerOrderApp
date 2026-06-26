//
//  Date+Ext.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 26.06.26.
//

import Foundation

extension Date {
  
  var eighteenYearsAgo: Date {
    Calendar.current.date(byAdding: .year, value: -18, to: Date())!
  }
  
  var oneHundredTenYearsAgo: Date {
    Calendar.current.date(byAdding: .year, value: -110, to: Date())!
  }
}
