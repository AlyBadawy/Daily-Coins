//
//  Statistic.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import Foundation

struct Statisic: Identifiable {
  let id = UUID().uuidString
  let title: String
  let value: String
  let percentageChange: Double?
}
