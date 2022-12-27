//
//  SummaryView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct SummaryView: View {
  @StateObject var coinsVM =  CoinsFetcher()
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack {
        // MARK: - Top Movbers View
        CellsRow(coinsVM: coinsVM)
        
        // MARK: - Divider
        Divider()
          .padding(.horizontal)
        
        // MARK: - All Coins View
        AllCoinsList(coinsVM: coinsVM)
      }
      if coinsVM.isLoadingData {
        CustomLoadingIndicator()
      }
    }
    .refreshable {
      coinsVM.fetchCoinsData()
    }
  }
}

struct SummaryView_Previews: PreviewProvider {
  static var previews: some View {
    SummaryView()
  }
}
