//
//  CoinFetcher.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

class CoinFetcher: ObservableObject {
  @Published var coin: CoinDetail? = nil
  @Published var isLoadingData = true
  
  // MARK: General Variables
  var coinName: String {
    return coin?.name ?? ""
  }
  var coinImageUrl: String {
    return coin?.image?.small ?? ""
  }
  
  
  
  
  init(coinID: String) {
    fetchCoinData(coinID: coinID)
  }
  
  func fetchCoinData(coinID: String) {
    self.isLoadingData = true
    let urlString: String = "https://api.coingecko.com/api/v3/coins/\(coinID)?localization=false&tickers=false&community_data=false&developer_data=false&sparkline=true"
    
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
        let currentrCoin = try JSONDecoder().decode(CoinDetail.self, from: data)
        DispatchQueue.main.async {
          self.coin = currentrCoin
          self.isLoadingData = false
        }
      } catch let error {
        print("DEBUG: Failed to decode coins with error \(error)")
        self.isLoadingData = false
      }
      
    }.resume()
  }
}


