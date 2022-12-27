//
//  CellsRow.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CellsRow: View {
  @StateObject var coinsVM: CoinsFetcher
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Top Movers")
        .font(.headline)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          ForEach(coinsVM.topMovers) { coin in
            NavigationLink {
              LazyNavigationView(CoinDetailsView(coin: coin))
            } label: {
              CoinCell(coin: coin)
            }
          }
        }
      }
    }
    .padding()
  }
}

struct CellsRow_Previews: PreviewProvider {
  static var previews: some View {
    CellsRow(coinsVM: CoinsFetcher())
  }
}
