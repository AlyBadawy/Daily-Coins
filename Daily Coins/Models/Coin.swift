//
//  Coin.swift
//  Daily Coins
//
//  Created by Aly Badawy on 11/18/22.
// generated on https://app.quicktype.io

import Foundation

struct Coin: Codable, Identifiable {
  let id, symbol, name: String
  let image: String
  let currentPrice: Double
  let marketCapRank: Int
  let totalVolume: Double?
  let marketCap: Double?
  let high24H, low24H, priceChange24H: Double?
  let priceChangePercentage24H: Double?
  let marketCapChange24H: Double?
  let marketCapChangePercentage24H: Double?
  let athChangePercentage: Double?
  let lastUpdated: String?
  let sparklineIn7D: SparklineIn7D?
  let priceChangePercentage24HInCurrency: Double?
  
  enum CodingKeys: String, CodingKey {
    case id, symbol, name, image
    case currentPrice = "current_price"
    case marketCap = "market_cap"
    case marketCapRank = "market_cap_rank"
    case totalVolume = "total_volume"
    case high24H = "high_24h"
    case low24H = "low_24h"
    case priceChange24H = "price_change_24h"
    case priceChangePercentage24H = "price_change_percentage_24h"
    case marketCapChange24H = "market_cap_change_24h"
    case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
    case athChangePercentage = "ath_change_percentage"
    case lastUpdated = "last_updated"
    case sparklineIn7D = "sparkline_in_7d"
    case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
  }
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable {
  let price: [Double]
}
