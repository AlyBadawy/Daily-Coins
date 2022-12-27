//
//  Double.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import Foundation

extension Double {
  private var currencyFormatter: NumberFormatter {
    let formatter = NumberFormatter()
    formatter.usesGroupingSeparator = true
    formatter.numberStyle = .currency
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 5
    
    return formatter
  }
  
  func asNumberString() -> String {
    return String(format: "%.2f", self)
  }
  
  private var numberFormatter: NumberFormatter {
    let formatter = NumberFormatter()
    formatter.numberStyle = .percent
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 5
    return formatter
  }
  
  func toCurrency() -> String {
    return currencyFormatter.string(for: self) ?? "$0.00"
  }
  
  func toPercentString() -> String {
    let value = numberFormatter.string(for: self / 100) ?? "0.00%"
    let sign = self > 0 ? "+" : ""
    return sign + value
  }
  
  func formattedWithAbbreviation() -> String {
    let num = abs(Double(self))
    let sign = (self < 0 ? "-" : "")
    let currency = "$"
    
    switch num {
      case 1_000_000_000_000...:
        let formatted = num / 1_000_000_000_000
        let stringFormatted = formatted.asNumberString()
        return "\(sign)\(currency)\(stringFormatted)Tr"
      case 1_000_000_000...:
        let formatted = num / 1_000_000_000
        let stringFormatted = formatted.asNumberString()
        return "\(sign)\(currency)\(stringFormatted)Bn"
      case 1_000_000...:
        let formatted = num / 1_000_000
        let stringFormatted = formatted.asNumberString()
        return "\(sign)\(currency)\(stringFormatted)M"
      case 1_000...:
        let formatted = num / 1_000
        let stringFormatted = formatted.asNumberString()
        return "\(sign)\(currency)\(stringFormatted)K"
      case 0...:
        return self.asNumberString()
      default:
        return "\(sign)\(currency)\(self)"
    }
  }
  
}
