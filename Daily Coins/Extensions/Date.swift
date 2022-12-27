//
//  Date.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import Foundation

extension Date {
  
  // 2022-11-19T00:11:10.847Z
  
  init(isoFormattedString: String) {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    let date = formatter.date(from: isoFormattedString) ?? Date()
    self.init(timeInterval: 0, since: date)
  }
  
  private var shortDateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd"
    return formatter
  }
  
  func asShortDateString() -> String {
    return shortDateFormatter.string(from: self)
  }
  
  private var timeFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mma"
    formatter.amSymbol = "am"
    formatter.pmSymbol = "pm"
    return formatter
  }
  
  func asTimeString() -> String {
    return timeFormatter.string(from: self)
  }
  
}

