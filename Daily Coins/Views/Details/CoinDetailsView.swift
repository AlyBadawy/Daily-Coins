//
//  CoinDetailsView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CoinDetailsView: View {
  @StateObject var coinVM: CoinFetcher
  //  @StateObject var coinDetailsVM: CoinDetailsVM
  
  let coin: Coin
  
  init(coin: Coin) {
    self.coin = coin
    _coinVM = StateObject(wrappedValue: CoinFetcher(coinID: coin.id))
  }
  
  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(alignment: .leading) {
        // Chart
        if coinVM.coin != nil {
          ChartView(coinDetail: coinVM.coin!)
          CoinInformationView(coinDetail: coinVM.coin!, coin: coin)
        } else {
          CustomLoadingIndicator()
            .frame(minHeight: 240)
        }
      }
    }
    .navigationTitle(coinVM.coinName)
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        CoinImage(url: coinVM.coinImageUrl)
      }
    }
  }
}

struct CoinDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    CoinDetailsView(coin: dev.coin)
  }
}
