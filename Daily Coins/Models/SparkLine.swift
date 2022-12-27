//
//  SparkLine.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import Foundation

struct SparkLine: Identifiable {
  let id = UUID().uuidString
  let date: Date
  let value: Double
}
