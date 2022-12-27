//
//  CoinInformationView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CoinInformationView: View {
  @StateObject var coinDetailsVM: CoinDetailsVM
  
  init(coinDetail: CoinDetail, coin: Coin) {
    _coinDetailsVM = StateObject(wrappedValue: CoinDetailsVM(coinDetail: coinDetail, coin: coin))
  }
  
  var body: some View {
    VStack {
      HStack {
        Spacer()
        Text("Updated: \(coinDetailsVM.updatedAt)")
          .font(.caption)
          .foregroundColor(Color.theme.accent)
      }
      .padding(.trailing)
      
      
      // overview
      CoinDetailsSection(model: coinDetailsVM.overviewSectionModel)
      
      // additional details
      CoinDetailsSection(model: coinDetailsVM.additionalDetailSectionModel)
      
      // Info
      if coinDetailsVM.info.count > 0 {
        InfoSection(infoString: coinDetailsVM.info)
      }
      // Scores details
      CoinDetailsSection(model: coinDetailsVM.scoresSectionModel)
      
    }
  }
}

struct CoinInformationView_Previews: PreviewProvider {
  static var previews: some View {
    CoinInformationView(coinDetail: dev.coinDetail, coin: dev.coin)
  }
}
