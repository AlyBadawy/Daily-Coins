//
//  CoinsFetcher.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import Foundation

class CoinsFetcher: ObservableObject {
  @Published var coins = [Coin]()
  @Published var topMovers = [Coin]()
  @Published var isLoadingData = true
  
  init() {
    fetchCoinsData()
  }
  
  func fetchCoinsData() {
    self.isLoadingData = true
    let urlString: String = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h"
    
    guard let url = URL(string: urlString) else { return }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      if let error = error {
        print("DEBUG: Error \(error.localizedDescription)")
        self.isLoadingData = false
        // TODO: Handle errors?
        return
      }
      
      if let response = response as? HTTPURLResponse {
        print("DEBUG: Response code \(response.statusCode)")
        // TODO: Handle errors?
      }
      
      guard let data = data else { return }
      
      do {
        let coins = try JSONDecoder().decode([Coin].self, from: data)
        DispatchQueue.main.async {
          self.coins = coins
          self.configureTopMovingCoins()
          self.isLoadingData = false
        }
      } catch let error {
        print("DEBUG: Failed to decode coins with error \(error)")
        DispatchQueue.main.async {
          self.isLoadingData = false
        }
      }
      
    }.resume()
  }
  
  func configureTopMovingCoins() {
    let topMovers = coins.sorted(by: { $0.priceChangePercentage24H ?? 0 > $1.priceChangePercentage24H ?? 0 } )
    self.topMovers = Array(topMovers.prefix(5))
  }
  
}

