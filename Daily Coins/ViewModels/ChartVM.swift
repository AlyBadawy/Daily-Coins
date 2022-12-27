//
//  ChartVM.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI
class ChartVM: ObservableObject {
  private let coin: CoinDetail
  
  init(coin: CoinDetail) {
    self.coin = coin
    configureChartData()
  }
  
  // MARK: Chart Config
  @Published var chartData = [SparkLine]()
  @Published var startDate = Date()
  @Published var endDate = Date()
  @Published var minPrice: Double = 0.0
  @Published var maxPrice: Double = 0.0
  @Published var xAxisValues = [Date]()
  @Published var yAxisValues = [Double]()
  
  var chartLineColor: Color {
    let priceChange = (coin.marketData?.sparkline7D?.price?.last ?? 0) - (coin.marketData?.sparkline7D?.price?.first ?? 0)
    return priceChange >= 0 ? Color.theme.green : Color.theme.red
  }
  
  func configureChartData() {
    guard let priceData = coin.marketData?.sparkline7D?.price else { return }
    var index = 0
    self.minPrice = priceData.min()!
    self.maxPrice = priceData.max()!
    self.endDate = Date(isoFormattedString: coin.lastUpdated ?? "")
    self.startDate = endDate.addingTimeInterval(-7 * 24 * 60 * 60)
    
    for i in -7...0 {
      let currentDate = endDate.addingTimeInterval(Double(i) * 24 * 60 * 60)
      self.xAxisValues.append(currentDate)
    }
    self.yAxisValues = [minPrice, ((minPrice + maxPrice) / 2), maxPrice]
    
    for price in priceData.reversed() {
      let date = endDate.addingTimeInterval(-1 * 60 * 60 * Double(index))
      let chartDateItem = SparkLine(date: date, value: price)
      self.chartData.append(chartDateItem)
      index += 1
    }
  }
}

