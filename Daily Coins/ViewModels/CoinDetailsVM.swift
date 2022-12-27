//
//  CoinDetailsVM.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

class CoinDetailsVM: ObservableObject {
  private let coinDetail: CoinDetail
  private let coin: Coin
  
  var info: String {
    return coinDetail.coinDetailDescription?.en?.replacingOccurrences(of: "<[^>]+>",
                                                                      with: "",
                                                                      options: String.CompareOptions.regularExpression,
                                                                      range: nil
    ) ?? "No Data available"
  }
  
  
  var updatedAt: String {
    return Date(isoFormattedString: coinDetail.lastUpdated ?? "").asTimeString()
  }
  
  
  // MARK: - OverView Section
  var overviewSectionModel: DetailSection {
    
    // price Stats
    let price = coin.currentPrice.toCurrency()
    let pricePercentChange = coin.priceChangePercentage24H
    let priceStats = Statisic(title: "Current price",
                              value: price,
                              percentageChange: pricePercentChange)
    
    // market cap stats
    let marketCap = coin.marketCap ?? 0
    let marketCapPercent = coin.marketCapChangePercentage24H
    let marketCapStat = Statisic(title: "Market Cap",
                                 value: marketCap.formattedWithAbbreviation(),
                                 percentageChange: marketCapPercent)
    
    // rank stats
    let rank = coin.marketCapRank
    let rankStat = Statisic(title: "Rank",
                            value: "\(rank)",
                            percentageChange: nil)
    
    // volume stats
    let volume = coin.totalVolume ?? 0
    let volumeState = Statisic(title: "Volume",
                               value: volume.formattedWithAbbreviation(),
                               percentageChange: nil)
    
    return DetailSection(title: "Overview", stats: [priceStats,
                                                    marketCapStat,
                                                    rankStat,
                                                    volumeState
                                                   ])
  }
  
  
  // MARK: - Additional Details Section
  var additionalDetailSectionModel: DetailSection {
    
    // 24H high
    let high = coin.high24H?.toCurrency() ?? "n/a"
    let highStat = Statisic(title: "24H High",
                            value: high,
                            percentageChange: nil)
    
    // 24H low
    let low = coin.low24H?.toCurrency() ?? "n/a"
    let lowStat = Statisic(title: "24H Low",
                           value: low,
                           percentageChange: nil)
    
    // 24H price change
    let priceChange24H = coin.priceChange24H?.toCurrency()
    let priceChange24Hpercent = coin.priceChangePercentage24H
    let priceChangeStat = Statisic(title: "24H Price Change",
                                   value: priceChange24H ?? "n/a",
                                   percentageChange: priceChange24Hpercent)
    
    // 24H market cap change
    let marketCapChange = coin.marketCapChange24H ?? 0
    let marketCapChangePercent = coin.marketCapChangePercentage24H
    let marketCapChangeState = Statisic(title: "24H Market Cap Change",
                                        value: marketCapChange.formattedWithAbbreviation(),
                                        percentageChange: marketCapChangePercent)
    
    return DetailSection(title: "Last 24 Hours", stats: [highStat,
                                                         lowStat,
                                                         priceChangeStat,
                                                         marketCapChangeState
                                                        ])
  }
  // MARK: Scores
  
  var scoresSectionModel: DetailSection {
    
    // CoinGecko
    let coingeckoScore = coinDetail.coingeckoScore?.asNumberString() ?? ""
    let coingeckoStat = Statisic(title: "CoinGecko Score",
                                 value: coingeckoScore,
                                 percentageChange: nil)
    
    // Developer Score
    let devScore = coinDetail.developerScore?.asNumberString() ?? ""
    let devScoreStat = Statisic(title: "Dev Score",
                                value: devScore,
                                percentageChange: nil)
    
    // CoinGecko
    let communityScore = coinDetail.communityScore?.asNumberString() ?? ""
    let communityScoreStat = Statisic(title: "Community Score",
                                      value: communityScore,
                                      percentageChange: nil)
    
    // CoinGecko
    let liquidityScore = coinDetail.coingeckoScore?.asNumberString() ?? ""
    let liquidityScoreStat = Statisic(title: "Liquidity Score",
                                      value: liquidityScore,
                                      percentageChange: nil)
    
    
    
    return DetailSection(title: "Coin Scores", stats: [coingeckoStat,
                                                       devScoreStat,
                                                       communityScoreStat,
                                                       liquidityScoreStat
                                                      ])
  }
  
  // MARK: - Init
  init(coinDetail: CoinDetail, coin: Coin) {
    self.coinDetail = coinDetail
    self.coin = coin
  }
}


