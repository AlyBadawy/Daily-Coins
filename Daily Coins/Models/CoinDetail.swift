//
//  CoinDetail.swift
//  Daily Coins
//
//  Created by Aly Badawy on 11/28/22.
//

import Foundation

// MARK: - CoinDetail
struct CoinDetail: Codable {
  let id, symbol, name: String?
  let blockTimeInMinutes: Int?
  let hashingAlgorithm: String?
  let categories: [String]?
  let coinDetailDescription: Description?
  let links: Links?
  let links: Links?
  let image: CoinDetailImage?
  let countryOrigin, genesisDate: String?
  let sentimentVotesUpPercentage, sentimentVotesDownPercentage, marketCapRank, coingeckoRank: Double?
  let coingeckoScore, developerScore, communityScore, liquidityScore: Double?
  let publicInterestScore: Double?
  let marketData: MarketData?
  let publicInterestStats: PublicInterestStats?
  let lastUpdated: String?
  
  enum CodingKeys: String, CodingKey {
    case id, symbol, name
    case blockTimeInMinutes = "block_time_in_minutes"
    case hashingAlgorithm = "hashing_algorithm"
    case categories
    case coinDetailDescription = "description"
    case links, image
    case countryOrigin = "country_origin"
    case genesisDate = "genesis_date"
    case sentimentVotesUpPercentage = "sentiment_votes_up_percentage"
    case sentimentVotesDownPercentage = "sentiment_votes_down_percentage"
    case marketCapRank = "market_cap_rank"
    case coingeckoRank = "coingecko_rank"
    case coingeckoScore = "coingecko_score"
    case developerScore = "developer_score"
    case communityScore = "community_score"
    case liquidityScore = "liquidity_score"
    case publicInterestScore = "public_interest_score"
    case marketData = "market_data"
    case publicInterestStats = "public_interest_stats"
    case lastUpdated = "last_updated"
  }
}

// MARK: - Description
struct Description: Codable {
  let en: String?
}

// MARK: - Image
struct CoinDetailImage: Codable {
  let thumb, small, large: String?
}

// MARK: - Links
struct Links: Codable {
  let twitterScreenName, facebookUsername: String?
  let subredditURL: String?
  let reposURL: ReposURL?
  
  enum CodingKeys: String, CodingKey {
    case twitterScreenName = "twitter_screen_name"
    case facebookUsername = "facebook_username"
    case subredditURL = "subreddit_url"
    case reposURL = "repos_url"
  }
}

// MARK: - ReposURL
struct ReposURL: Codable {
  let github: [String]?
  let bitbucket: [String]?
}

// MARK: - MarketData
struct MarketData: Codable {
  let currentPrice: [String: Double]?
  let ath, athChangePercentage: [String: Double]?
  let athDate: [String: String]?
  let atl, atlChangePercentage: [String: Double]?
  let atlDate: [String: String]?
  let marketCap: [String: Double]?
  let marketCapRank: Int?
  let fullyDilutedValuation, totalVolume, high24H, low24H: [String: Double]?
  let priceChange24H, priceChangePercentage24H, priceChangePercentage7D, priceChangePercentage14D: Double?
  let priceChangePercentage30D, priceChangePercentage60D, priceChangePercentage200D, priceChangePercentage1Y: Double?
  let marketCapChange24H, marketCapChangePercentage24H: Double?
  let priceChange24HInCurrency, priceChangePercentage1HInCurrency, priceChangePercentage24HInCurrency, priceChangePercentage7DInCurrency: [String: Double]?
  let priceChangePercentage14DInCurrency, priceChangePercentage30DInCurrency, priceChangePercentage60DInCurrency, priceChangePercentage200DInCurrency: [String: Double]?
  let priceChangePercentage1YInCurrency, marketCapChange24HInCurrency, marketCapChangePercentage24HInCurrency: [String: Double]?
  let totalSupply, maxSupply, circulatingSupply: Double?
  let sparkline7D: Sparkline7D?
  let lastUpdated: String?
  
  enum CodingKeys: String, CodingKey {
    case currentPrice = "current_price"
    case ath
    case athChangePercentage = "ath_change_percentage"
    case athDate = "ath_date"
    case atl
    case atlChangePercentage = "atl_change_percentage"
    case atlDate = "atl_date"
    case marketCap = "market_cap"
    case marketCapRank = "market_cap_rank"
    case fullyDilutedValuation = "fully_diluted_valuation"
    case totalVolume = "total_volume"
    case high24H = "high_24h"
    case low24H = "low_24h"
    case priceChange24H = "price_change_24h"
    case priceChangePercentage24H = "price_change_percentage_24h"
    case priceChangePercentage7D = "price_change_percentage_7d"
    case priceChangePercentage14D = "price_change_percentage_14d"
    case priceChangePercentage30D = "price_change_percentage_30d"
    case priceChangePercentage60D = "price_change_percentage_60d"
    case priceChangePercentage200D = "price_change_percentage_200d"
    case priceChangePercentage1Y = "price_change_percentage_1y"
    case marketCapChange24H = "market_cap_change_24h"
    case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
    case priceChange24HInCurrency = "price_change_24h_in_currency"
    case priceChangePercentage1HInCurrency = "price_change_percentage_1h_in_currency"
    case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    case priceChangePercentage7DInCurrency = "price_change_percentage_7d_in_currency"
    case priceChangePercentage14DInCurrency = "price_change_percentage_14d_in_currency"
    case priceChangePercentage30DInCurrency = "price_change_percentage_30d_in_currency"
    case priceChangePercentage60DInCurrency = "price_change_percentage_60d_in_currency"
    case priceChangePercentage200DInCurrency = "price_change_percentage_200d_in_currency"
    case priceChangePercentage1YInCurrency = "price_change_percentage_1y_in_currency"
    case marketCapChange24HInCurrency = "market_cap_change_24h_in_currency"
    case marketCapChangePercentage24HInCurrency = "market_cap_change_percentage_24h_in_currency"
    case totalSupply = "total_supply"
    case maxSupply = "max_supply"
    case circulatingSupply = "circulating_supply"
    case sparkline7D = "sparkline_7d"
    case lastUpdated = "last_updated"
  }
}

// MARK: - Sparkline7D
struct Sparkline7D: Codable {
  let price: [Double]?
}

// MARK: - PublicInterestStats
struct PublicInterestStats: Codable {
  let alexaRank: Int?
  let bingMatches: Int?
  
  enum CodingKeys: String, CodingKey {
    case alexaRank = "alexa_rank"
    case bingMatches = "bing_matches"
  }
}

